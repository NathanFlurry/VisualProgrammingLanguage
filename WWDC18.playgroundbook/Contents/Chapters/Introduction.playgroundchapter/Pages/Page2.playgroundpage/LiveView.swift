import PlaygroundSupport
import UIKit

let canvasViewController = CanvasViewController()

PlaygroundPage.current.liveView = canvasViewController

let canvas = canvasViewController.canvas
let baseNode = canvas.baseNode!

let dec = canvas.insert(node: DeclareVariableNode(), base: baseNode, offset: CGPoint(x: 300, y: 0))
baseNode.node.output.triggers![0].connect(to: dec.node.inputTrigger!)

let c1 = canvas.insert(node: IntConstNode(), base: dec, offset: CGPoint(x: -300, y: 200))
(c1.contentView! as! DrawCanvasNodeView).value = "5"
c1.node.output.value!.connect(to: dec.node.inputValues[0])

let set = canvas.insert(node: SetVariableNode(), base: dec, offset: CGPoint(x: 350, y: 0))
dec.node.output.triggers![0].connect(to: set.node.inputTrigger!)
set.node.inputVariables[0].connect(to: dec.node.output.triggers![0].exposedVariables[0])

let c2 = canvas.insert(node: IntConstNode(), base: set, offset: CGPoint(x: -300, y: 200))
(c2.contentView! as! DrawCanvasNodeView).value = "10"
c2.node.output.value!.connect(to: set.node.inputValues[0])

let pr = canvas.insert(node: PrintNode(), base: set, offset: CGPoint(x: 350, y: 0))
set.node.output.triggers![0].connect(to: pr.node.inputTrigger!)

let get = canvas.insert(node: GetVariableNode(), base: pr, offset: CGPoint(x: -250, y: 150))
get.node.output.value!.connect(to: pr.node.inputValues[0])
get.node.inputVariables[0].connect(to: dec.node.output.triggers![0].exposedVariables[0])
