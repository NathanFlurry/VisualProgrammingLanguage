/*:
 Most VPLs write an interpreter for their launguage, therefore harming performance and leading to extra bloat. However, this VPL analyzes the graph and assembles it into executable Swift code. This means that this VPL can take advantage of the libraries, speed, and features of Swift.
 
 Additionally, due to the nature of the way it assembles to Swift, it's incredibly flexible and allows custom nodes to be created easily the same way that the built-in nodes were created.
 
 + Note:
 In this book, we just scratch the surface of how to make custom nodes. If you want to create more advanced nodes, take a look at `Node.availableVariables` and `Node.nearestControlNode` for getting extra context about the node.
 Nodes are also allowed to have custom views that represent more complicated content. A few are already provided, including `GenericInputView`, `ValueChooserView`, and `DrawCanvasNodeView` (for OCR input). If you want to make your own, try subclassing `DisplayableNodeContentView`.
 
 */

//#-hidden-code
import PlaygroundSupport
import UIKit

let canvasViewController = CanvasViewController()
let canvas = canvasViewController.canvas
let baseNode = canvas.baseNode!

PlaygroundPage.current.liveView = canvasViewController
//#-end-hidden-code

//: First, we can look at a [data flow](glossary://data%20flow) node that splits a string with a character and returns an array of results.
public class SplitStringNode: DisplayableNode {
//: This is where the shortcut is defined. This will let you draw *T* and spawn this `SplitStringNode`.
    public static let shortcutCharacter: String? = "T"
    
    public static let id: String = "split-string"
    public static let name: String = "Split String"
    
//: As seen here, the `SplitStringNode` takes two input values of a string type. Take a look at the documentation for `ValueType` to see how this type system works.
    public var inputValues: [InputValue] = [
        InputValue(id: "input", name: "Input", type: .string),
        InputValue(id: "separator", name: "Separator", type: .string)
    ]
    
//: This node outputs a single array value. `NodeOutput` is an enum that may only be a single `OutputValue` or an array of `OutputTriggers`, as we'll see in the next example.
//: Note the `.array(.string)`. The type system in this VPL allows for generic values, which enables the use of type safe arrays, dictionaries, and more. Try drawing the *A* or *D* shortcuts to get a list of array and dictionary nodes.
    public let output: NodeOutput = .value(OutputValue(type: .array(.string)))
    
//: Calling `setupConditions` in the initializer is required. Without it, the node will no be able to connect to other nodes.
    public required init() {
        self.setupConnections()
    }
    
//: This is where the magic happens. ✨
    public func assemble() -> String {
//: Before doing anything else, we have to assemble the code for the values that this node handles.
        let assembledInput = inputValues[0].assemble()
        let assembledSeparator = inputValues[1].assemble()
        
//: After the values are assembled, the node can assemble whatever it does. In this case, it will split a string by a separator and return an array of new strings.
        return "\(assembledInput).components(separatedBy: \(assembledSeparator))"
    }
}


//: Next, we'll take a look at a more complex [control flow](glossary://control%20flow) node that catches errors and provides a way to handle them.
public class DoCatchNode: DisplayableNode {
    public static let shortcutCharacter: String? = "D"
    
    public static let id: String = "do-catch"
    public static let name: String = "Do Catch"
    
//: There can only be one or no input trigger on a node. Since this node manipulates the control flow, then it must have an input trigger in order to have it called.
    public var inputTrigger: InputTrigger? = InputTrigger()
    
//: Similar to the `If` and `For` nodes, this node has multiple output triggers which defines what code happens where. Note the `exposedVariables` parameter on the third `OutpuTrigger`. This means that any child node may use the error variable, such as a print statement.
    public let output: NodeOutput = .triggers([
        OutputTrigger(),
        OutputTrigger(id: "do", name: "Do"),
        OutputTrigger(id: "catch", name: "Catch", exposedVariables: [NodeVariable(name: "Error", type: .string)])
        ])
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
//: When a `NodeVariable` is constructed, it is given a unique identifier for the node name, which is stored on `NodeVariable.id`. Any time you need to reference the variable in the code, then you can access the ID easily, like here.
        let errorVariable = output.triggers![2].exposedVariables[0].id
        
//: Sometimes you need to store a temporary variable that is not accessible to the user. In this case, we need to convert the error to a string before letting the child nodes access it. For this, you can generate a temporary variable ID with `NodeVariable.variableId` like we do here.
        let tempErrorVariable = NodeVariable.variableId
        
//: When assembling larger chunks of code, we want to maintain clean formatting for readbility. To do that, there are the custom operators: `!+=` and `!!+=`.
//: `!+=` will append any code and will automatically indent it to the correct indentation and then append it to the `out` variable.
//: `!!+=` is similar to `!+=`, except it adds one indentation to it, which makes it easy to write blocks of code cleanly.
//: Notice how we use `tempErrorVariable` to store the variable temporarily before converting it to a string and assigning it to a variable exposed to child nodes.
        var out = ""
        out !+= "do {"
        out !!+= assembleOutputTrigger(id: "do")
        out !+= "} catch let \(tempErrorVariable) {"
        out !!+= "let \(errorVariable) = \(tempErrorVariable).localizedDescription"
        out !!+= assembleOutputTrigger(id: "catch")
        out !+= "}"

//: On the last line of any control flow node, we always join the output with the rest of the program. Calling `assembleOutputTrigger` without any parameters will automaticaly assemble the next node (which will recursively assemble each following node until the program is complete).
        return out + assembleOutputTrigger()
    }
}

//: Finally, we just tell the program about these nodes.
canvasViewController.spawnableNodes += [SplitStringNode.self, DoCatchNode.self]

//: Continue on to the [next](@next) page to try writing your own nodes.

//#-editable-code
//#-end-editable-code

//#-hidden-code

@discardableResult
func getVar(base: DisplayNode, inputIndex: Int, targetTrigger: OutputTrigger, offset: CGPoint) -> DisplayNode {
    let node = canvas.insert(node: GetVariableNode(), base: base, offset: offset)
    node.node.output.value!.connect(to: base.node.inputValues[inputIndex])
    node.node.inputVariables[0].connect(to: targetTrigger.exposedVariables[0])
    return node
}

let doCatch = canvas.insert(node: DoCatchNode(), base: baseNode, offset: CGPoint(x: 250, y: 0))
baseNode.node.output.triggers![0].connect(to: doCatch.node.inputTrigger!)

let pr = canvas.insert(node: PrintNode(), base: doCatch, offset: CGPoint(x: 400, y: 0))
pr.node.inputTrigger!.connect(to: doCatch.node.output.triggers![2])

let spl = canvas.insert(node: SplitStringNode(), base: pr, offset: CGPoint(x: 0, y: 200))
spl.node.output.value!.connect(to: pr.node.inputValues[0])

getVar(base: spl, inputIndex: 0, targetTrigger: doCatch.node.output.triggers![2], offset: CGPoint(x: -425, y: 0))

let c1 = canvas.insert(node: StringConstNode(), base: spl, offset: CGPoint(x: -300, y: 225))
(c1.node.contentView! as! DrawCanvasNodeView).value = " "
c1.node.output.value!.connect(to: spl.node.inputValues[1])

//#-end-hidden-code

