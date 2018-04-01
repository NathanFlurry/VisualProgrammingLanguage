/*:
 
 Now you get to write your own nodes! 🤓
 
 */

//#-hidden-code
import PlaygroundSupport
import UIKit

let canvasViewController = CanvasViewController()
let canvas = canvasViewController.canvas
let baseNode = canvas.baseNode!

PlaygroundPage.current.liveView = canvasViewController
//#-end-hidden-code

//: First we'll do the [data flow](glossary://data%20flow) node. This one is pretty simple: it just takes two strings and joins them.
public class ConcatenateStringNode: DisplayableNode {
//: You can test this by drawing *J* on the canvas.
    public static let shortcutCharacter: String? = "J"

    public static let id: String = "concat-strings"
    public static let name: String = "Concatenate Strings"
    
//: This node takes two strings as input.
    public var inputValues: [InputValue] = [
        InputValue(id: "a", name: "A", type: .string),
        InputValue(id: "b", name: "B", type: .string),
    ]
    
//: And it outputs one string value.
    public let output: NodeOutput = .value(OutputValue(type: .string))

    public required init() {
        self.setupConnections()
    }

//: Again, here's where the magic happens. In Swift, you can combine two strings with the `+` operator, which you can make use of. Don't forget to assemble your inputs before joining them.
    public func assemble() -> String {
        //#-editable-code
        
        //#-end-editable-code
    }
}

//: An now for the [control flow](glossary://control%20flow) node.
public class RepeatWhileNode: DisplayableNode {
    public static let shortcutCharacter: String? = "R"

    public static let id: String = "repeat-while"
    public static let name: String = "Repeat While"
    
//: This is the trigger that will spawn a `RepeatWhileNode`.
    public var inputTrigger: InputTrigger? = InputTrigger()
    
//: Unlike the `TryCatchNode`, the `RepeatWhileNode` requires an input value to tell the loop if it needs to keep going. Even though this is a [control flow](glossary://control%flow) node, the input values act just like input values on [data flow](glossary://data%20flow) nodes.
    public var inputValues: [InputValue] = [InputValue(id: "condition", name: "Condition", type: .bool)]
    
//: Similar to the `For` node, this ndoe has two outputs: one for the next node for the rest of the program and one for the nodes that go inside the loop.
    public let output: NodeOutput = .triggers([
        OutputTrigger(),
        OutputTrigger(id: "loop", name: "Loop")
    ])

    public required init() {
        self.setupConnections()
    }

/*:
 The Swift syntax for a repeat-while loop is like this:
     
 ```
 repeat {
     /* loop code */
 } while /* condition */
 ```
     
 We've already assembled the input value and created the out variable for you. Now you just need to use the `!+=` and `!!+=` operators to create the repeat-while loop.
 */
    public func assemble() -> String {
        // Assemble the condition
        let assembledCondition = inputValues[0].assemble()

        // Assemble the code
        var out = ""
        //#-editable-code
        
        //#-end-editable-code

        return out + assembleOutputTrigger()
    }
}

//: Finally, we just tell the canvas about these nodes.
canvasViewController.spawnableNodes += [ConcatenateStringNode.self, RepeatWhileNode.self]

