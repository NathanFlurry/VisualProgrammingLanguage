/*:
 ## Conclusion
 
 This Playground demonstrates the tip if the iceburg with VPLs. Industries like graphics programming and audio synthesis are already taking advantage of VPLs to create an intuitive experience for writing performance critical program (like shaders and synthesizers). Additionally, many game engines are gaining visual programming systems for less experienced programmers like artists to create programs of their own. I hope to see VPLs maturing and being used across more and more fields in the future, since the technology has incredible potential.
 
 ## Notable components
 
 If you decide to read the source, here's a few points of interest that might be usable in other proejcts:
 
 * `OCRRequest`: Provides a unified system for reading characters with the ability to swap the dataset (e.g. it's compatible with `MNIST`, `NIST`, and `Chars74k` at the moment).
 * `Node` + other data classes: Provides a platform agnostic way for creating and assembling VPLs. This system could easily be ported to many other platforms and input systems, such as VR.
 * `DrawCanvasNodeView`: As seen in the `String` and `Integer Constant` nodes, this provides OCR input with the ability to scroll to the right if the user writes too far.
 * `CodeOutputView`: Poor man's Swift syntax highlighting.
 * `DrawingCanvas`: Simple and flexible view for drawing.
 
 ## Try it yourself
 
 Try out customizing the VPL for yourself below. You can add nodes, procedurally insert your own nodes (using `canvas.insert(node:at:)`), and more.
 
 Full source available on GitHub [here](https://github.com/NathanFlurry/VisualProgrammingLanguage). Source includes a standalone iOS application so you can have more space to write your programs.
 
 */

//#-hidden-code
import UIKit
//#-end-hidden-code

let canvasViewController = CanvasViewController()
let canvas = canvasViewController.canvas
let baseNode = canvas.baseNode!

//#-editable-code placeholder text

// 🤔

//#-end-editable-code

//#-hidden-code
import PlaygroundSupport
PlaygroundPage.current.liveView = canvasViewController
//#-end-hidden-code
