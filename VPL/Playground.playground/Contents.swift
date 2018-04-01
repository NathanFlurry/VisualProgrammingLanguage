import VPLEditor
import UIKit
import PlaygroundSupport

let canvas = CanvasViewController()

// Create and insert the display node


baseNode = DisplayNode(node: BaseNode())
insert(node: baseNode, at: CGPoint(x: contentSize.width / 2, y: contentSize.height / 2))

PlaygroundPage.current.liveView = canvas
