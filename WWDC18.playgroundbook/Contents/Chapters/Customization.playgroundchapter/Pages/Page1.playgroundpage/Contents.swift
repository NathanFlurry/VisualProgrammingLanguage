/*:
 Most VPLs write an interpreter for their launguage, therefore harming performance and leading to extra bloat. However, this VPL analyzes the graph and assembles it into executable Swift code. This means that this VPL can take advantage of the libraries, speed, and features of Swift.
 
 Additionally, it's incredibly flexible and allows custom nodes to be created easily.
 
 + Note:
 In this book, we just scratch the surface of how to make custom nodes. If you want to create more advanced nodes, take a look at `Node.availableVariables` and `Node.nearestControlNode` for getting extra context about the node.
 Nodes are also allowed to have custom views that represent more complicated content. A few are already provided, including `GenericInputView`, `ValueChooserView`, and `DrawCanvasNodeView` (for OCR input). If you want to make your own, try subclassing `DisplayableNodeContentView`.
 
 */

//#-hidden-code
import PlaygroundSupport
import UIKit

let canvasViewController = CanvasViewController()

PlaygroundPage.current.liveView = canvasViewController
//#-end-hidden-code

//: First, we can look at a [data flow](glossary://data%20flow) node that splits a string with a character and returns an array of results.
public class SplitStringNode: DisplayableNode {
    //: This is where the shortcut is defined. This will let you draw *T* and spawn this `SplitStringNode`.
    public static let shortcutCharacter: String? = "T"
    
    public static let id: String = "split-string"
    public static let name: String = "Split String"
    
//: As seen here, the `SplitStringNode` takes two input values of a string type.
    public var inputValues: [InputValue] = [
        InputValue(id: "input", name: "Input", type: .string),
        InputValue(id: "separator", name: "Separator", type: .string)
    ]
    
//: Additionally, outputs a single value. `NodeOutput` may only be a single `OutputValue` or an array of `OutputTriggers`, as we'll see in the next example.
//: Node the `.array(.string)`. The type system in this VPL allows for generic values, which enables the use of type safe arrays, dictionaries, and more. Try drawing the *A* or *D* shortcuts to get a list of array and dictionary nodes.
    public let output: NodeOutput = .value(OutputValue(type: .array(.string)))
    
    public required init() {
//: Calling `setupConditions` in the initializer is required. Without it, the node will no be able to connect to other odes.
        self.setupConnections()
    }
    
    //: This is where the magic happens. ✨
    public func assemble() -> String {
//: Before doing anything else, we have to assemble the code for the values that this node handles.
        let assembledInput = inputValues[0].assemble()
        let assembledSeparator = inputValues[1].assemble()
        
//: After the values are assembled, this node can assemble whatever it does. In this case, it will split a string by a separator and return an array of new strings.
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
//: When a `NodeVariable` is constructed, it is given a unique identifier for the node name which is stored on `NodeVariable.id`. Any time you need to reference the variable in the code, then you can access the ID easily, like here.
        let errorVariable = output.triggers![2].id
        
//: Sometimes you need to store a temporary variable that is not accessible to the user. In this case, we need to convert the error to a string before letting the child nodes access it. For this, you can generate a temporary variable ID with `NodeVariable.variableId` like we do here.
        let tempErrorVariable = NodeVariable.variableId
        
//: When assembling larger chunks of code, we want to maintain clean formatting for readbility. To do that, there are the custom operators: `!+=` and `!!+=`.
//: `!+=` will append any code and will automatically indent it to the correct indentation and then append it to the `out` variable.
//: `!!+=` is similar to `!+=`, except it adds one indentation to it, which makes it easy to write blocks of code cleanly.
//: Node how we use `tempErrorVariable` to store the variable temporarily before converting it to a string and assigning it to a variable exposed to child nodes.
        var out = ""
        out !+= "do {"
        out !!+= assembleOutputTrigger(id: "do")
        out !+= "} catch let \(tempErrorVariable) {"
        out !!+= "let \(errorVariable) = \(tempErrorVariable).localizedDescription"
        out !!+= assembleOutputTrigger(id: "catch")
        out !+= "}"

//: On the last line of any control flow node, we always join the output with the rest of the program. Calling `assembleOutputTrigger` without any parameters will automaticaly assemble the next node (which is the rest of the program).
        return out + assembleOutputTrigger()
    }
}

//: Finally, we just tell the canvas about these nodes.
canvasViewController.spawnableNodes += [SplitStringNode.self, DoCatchNode.self]

//: Continue on to the [next](@next) page to try writing your own nodes.

//#-editable-code
//#-end-editable-code

