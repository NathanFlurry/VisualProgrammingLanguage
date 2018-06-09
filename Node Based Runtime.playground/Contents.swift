import UIKit
import PlaygroundSupport

/*** Logging ***/
let playgroundLogger = UITextView(frame: CGRect.zero)
PlaygroundPage.current.liveView = playgroundLogger

func log(_ text: String) {
    playgroundLogger.text = playgroundLogger.text + text + "\n"
}

/*** Node Stuff ***/
typealias NodeCallback = (_ nextNode: OutputSocket) -> Void

class InputSocket {
    weak var owner: Node!
    var target: OutputSocket?
}

class OutputSocket {
    weak var owner: Node!
    var target: InputSocket?
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func connect(to: InputSocket) {
        self.target = to
        to.target = self
    }
}

class BaseOutputSocket: OutputSocket {
    init() {
        super.init(name: "Base")
    }
}

class Node {
    var inputSocket: InputSocket
    var outputSockets: [OutputSocket] = []
    var baseOutputSocket: BaseOutputSocket {
        return outputSockets[0] as! BaseOutputSocket
    }
    var executionCount: Int = 0
    
    init() {
        self.inputSocket = InputSocket()
        self.outputSockets = [BaseOutputSocket()]
    }
    
    func setupSockets() {
        inputSocket.owner = self
        for socket in outputSockets {
            socket.owner = self
        }
    }
    
    final func execute(callback: @escaping NodeCallback) {
        if executionCount == 0 {
            self.execOnce(callback: createFinishedExecutionCallback(callback: callback))
        }
        self.execAlways(callback: createFinishedExecutionCallback(callback: callback))
        
        executionCount += 1
    }
    
    func execOnce(callback: NodeCallback) {
        // Override opint
    }
    
    func execAlways(callback: NodeCallback) {
        // Override point
    }
    
    private func createFinishedExecutionCallback(callback: @escaping NodeCallback) -> NodeCallback {
        return { outputSocket in
            self.executionCount += 1
            callback(outputSocket)
        }
    }
}

class IfNode: Node {
    var condition: Bool
    
    init(condition: Bool) {
        self.condition = condition
        
        super.init()
        self.outputSockets.append(OutputSocket(name: "True"))
        self.outputSockets.append(OutputSocket(name: "False"))
        
        setupSockets()
    }
    
    override func execAlways(callback: NodeCallback) {
        log("exec count \(executionCount)")
        if executionCount == 0 {
            callback(condition ? outputSockets[1] : outputSockets[2])
        } else if executionCount == 1 {
            callback(baseOutputSocket)
        }
    }
}

class PrintNode: Node {
    var text: String
    
    init(text: String) {
        self.text = text
        
        super.init()
        
        self.setupSockets()
    }
    
    override func execOnce(callback: NodeCallback) {
        log("Print: " + text)
        callback(baseOutputSocket)
    }
}

class Runtime {
    var rootNode: Node
    
    var stack: [Node]
    
    var currentNode: Node? { 
        get {
            return stack.last
        }
        set(newValue) {
            if let v = newValue {
                stack[stack.count - 1] = v
            }
        }
    }
    
    init(rootNode: Node) {
        self.rootNode = rootNode
        self.stack = [rootNode]
    }
    
    func run() {
        execCurrent()
    }
    
    func nodeFinished(output: OutputSocket) {
        var isBaseSocket = output is BaseOutputSocket
        if let nextNode = output.target?.owner {
            if isBaseSocket {
                log("replacing current")
                currentNode = nextNode
            } else {
                log("push")
                pushStack(node: nextNode)
            }
        } else {
            log("popping ")
            popStack()
        }
        execCurrent()
    }
    
    func execCurrent() {
        log("Executing: \(currentNode)")
        if let currentNode = currentNode {        
            currentNode.execute(callback: self.nodeFinished)
        } else {
            log("Stack is empty")
        }
    }
    
    func pushStack(node: Node) {
        stack.append(node)
    }
    
    func popStack() {
        stack.popLast()
    }
}

let p1 = PrintNode(text: "Always runs")

let i1 = IfNode(condition: true)

let p2 = PrintNode(text: "Is true")

let p3 = PrintNode(text: "Is false")

let p4 = PrintNode(text: "After if")

p1.baseOutputSocket.connect(to: i1.inputSocket)
i1.outputSockets[1].connect(to: p2.inputSocket)
i1.outputSockets[2].connect(to: p3.inputSocket)
i1.baseOutputSocket.connect(to: p4.inputSocket)

let runtime = Runtime(rootNode: p1)
runtime.run()



//  let runtime = Runtime()


/*
 Issue: What about backtracking, like with if statements?
 There needs to be a stack.
 
 Solution 1:
 * Execute on a separate thread that handles all of the execution
 * Everything is synchronouse, so an if statement can call `trueCondition()` then call `nextCondition()`
 * Issue 1: The stack may exceed its maximum height
 * Issue 2: This is not clean
 
 Solution 2:
 * Make my own stack
 * The stack represents nodes that are being called
 * If it's the next node, just change the last item on the stack
 * If it's a child, then add another element to the stack
 * If it returns nil (i.e. there is no next node to go to), then pop an element off the stack and go back to the previous decision
 * It just calls `exec` again, the node will keep track of its current state
 * Issue 1: This is a bis misleading form a technical perspective: it's always output nodes, but they do different things to the stack; I guess it doesn't really matte
 
 */

