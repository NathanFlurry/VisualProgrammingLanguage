import PlaygroundSupport
import UIKit

let canvasViewController = CanvasViewController()

PlaygroundPage.current.liveView = canvasViewController

let canvas = canvasViewController.canvas
let baseNode = canvas.baseNode!

@discardableResult
func const(base: DisplayNode, def: String, inputIndex: Int = 0) -> DisplayNode {
    let node = canvas.insert(node: IntConstNode(), base: base, offset: CGPoint(x: -250, y: 250))
    (node.node.contentView! as! DrawCanvasNodeView).value = def
    node.node.output.value!.connect(to: base.node.inputValues[inputIndex])
    return node
}

@discardableResult
func getVar(base: DisplayNode, inputIndex: Int, targetTrigger: DisplayNode, offset: CGPoint) -> DisplayNode {
    let node = canvas.insert(node: GetVariableNode(), base: base, offset: offset)
    node.node.output.value!.connect(to: base.node.inputValues[inputIndex])
    node.node.inputVariables[0].connect(to: targetTrigger.node.output.triggers![0].exposedVariables[0])
    return node
}

// Up to for loop
let var1 = canvas.insert(node: DeclareVariableNode(), base: baseNode, offset: CGPoint(x: 400, y: 0))
baseNode.node.output.triggers![0].connect(to: var1.node.inputTrigger!)

const(base: var1, def: "0")

let var2 = canvas.insert(node: DeclareVariableNode(), base: var1, offset: CGPoint(x: 400, y: 0))
var1.node.output.triggers![0].connect(to: var2.node.inputTrigger!)

const(base: var2, def: "1")

let forNode = canvas.insert(node: ForLoopNode(), base: var2, offset: CGPoint(x: 400, y: 0))
var2.node.output.triggers![0].connect(to: forNode.node.inputTrigger!)


let loopStart = const(base: forNode, def: "0")
loopStart.frame.origin.x -= 200
let loopEnd = const(base: forNode, def: "10", inputIndex: 1)
loopEnd.frame.origin.x += 150

// Loop
let var3 = canvas.insert(node: DeclareVariableNode(), base: forNode, offset: CGPoint(x: 650, y: 100))
var3.node.inputTrigger!.connect(to: forNode.node.output.triggers![1])

let add = canvas.insert(node: AddNode(), base: var3, offset: CGPoint(x: 0, y: 150))
add.node.output.value!.connect(to: var3.node.inputValues[0])

getVar(base: add, inputIndex: 0, targetTrigger: var1, offset: CGPoint(x: -350, y: -50))
getVar(base: add, inputIndex: 1, targetTrigger: var2, offset: CGPoint(x: -350, y: 50))

let set1 = canvas.insert(node: SetVariableNode(), base: var3, offset: CGPoint(x: 350, y: 0))
set1.node.inputTrigger!.connect(to: var3.node.output.triggers![0])
set1.node.inputVariables[0].connect(to: var1.node.output.triggers![0].exposedVariables[0])

getVar(base: set1, inputIndex: 0, targetTrigger: var2, offset: CGPoint(x: 0, y: 150))

let set2 = canvas.insert(node: SetVariableNode(), base: set1, offset: CGPoint(x: 400, y: 0))
set2.node.inputTrigger!.connect(to: set1.node.output.triggers![0])
set2.node.inputVariables[0].connect(to: var2.node.output.triggers![0].exposedVariables[0])

getVar(base: set2, inputIndex: 0, targetTrigger: var3, offset: CGPoint(x: 0, y: 150))

// Print
let pr = canvas.insert(node: PrintNode(), base: forNode, offset: CGPoint(x: 350, y: -200))
pr.node.inputTrigger!.connect(to: forNode.node.output.triggers![0])

getVar(base: pr, inputIndex: 0, targetTrigger: var2, offset: CGPoint(x: 0, y: 150))
