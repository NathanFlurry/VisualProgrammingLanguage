import UIKit
import PlaygroundSupport

// Create canvas view controller
let canvasViewController = CanvasViewController()

let image = UIImage(named: "background.png")

PlaygroundPage.current.liveView = canvasViewController.view
