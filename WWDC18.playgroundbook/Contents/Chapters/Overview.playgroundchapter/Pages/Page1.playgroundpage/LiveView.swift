import PlaygroundSupport
import UIKit

let canvasViewController = CanvasViewController()

PlaygroundPage.current.liveView = canvasViewController

let canvas = canvasViewController.canvas
let baseNode = canvas.baseNode!

let ifNode = canvas.insert(node: IfNode(), base: baseNode, offset: CGPoint(x: 400, y: 0))
baseNode.node.output.triggers![0].connect(to: ifNode.node.inputTrigger!)

let eqNode = canvas.insert(node: EqualsNode(), base: ifNode, offset: CGPoint(x: -400, y: 200))
ifNode.node.inputValues[0].connect(to: eqNode.node.output.value!)

let c1 = canvas.insert(node: RandomIntNode(), base: eqNode, offset: CGPoint(x: -300, y: -100))
c1.node.output.value!.connect(to: eqNode.node.inputValues[0])

let c2 = canvas.insert(node: IntConstNode(), base: eqNode, offset: CGPoint(x: -300, y: 100))
(c2.node.contentView! as! DrawCanvasNodeView).value = "2"
c2.node.output.value!.connect(to: eqNode.node.inputValues[1])

let pr = canvas.insert(node: PrintNode(), base: ifNode, offset: CGPoint(x: 400, y: -300))
ifNode.node.output.triggers![1].connect(to: pr.node.inputTrigger!)

let cEven = canvas.insert(node: StringConstNode(), base: pr, offset: CGPoint(x: 0, y: 200))
cEven.node.output.value!.connect(to: pr.node.inputValues[0])
(cEven.node.contentView! as! DrawCanvasNodeView).value = "EVEN"
