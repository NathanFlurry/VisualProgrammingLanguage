/*:
 The next major topic in visual programming is variables. Varials are always defiend by [output](glossary://output) [triggers](glossary://trigger) and are only accessible by [child nodes](glossary://child%20node). On the right, you can see that the `Declare Variable` node sets a variable to `5` and then the `Set Variable` node sets the variable to `10`, which makes sense because the `Set Variable` node is a child of the `Declare Variable` node, so it can reference that variable.
 
 However, getting variables is a bit trickier to undertsand. Parent-child relationships along the [control flow](glossary://control%20flow) are defined by connections from output triggers to input triggers. *However,* parent-child relationships for [data flow](glossary://data%20flow) are defined by connections from input values to output values.
 
 + Note:
 Later in this book, you'll have a chance to implement your own custom node with Swift. You can use the `Node.nearestControlNode` and `Node.availableVariables` which correspond to what was just discussed.
 
 You can see that the print statement has an input value connected to the output value of a `Get Variable` node. As discussed before, the `Get Variable` node is a child of the `Print` node, since the `Print` node's (the parent) input value is connected to the `Get Variable` node's (the child) output value. the full parent-child diagram for the `Get Variable` node is: `Start > Declare Variable > Set Variable > Print > Get Variable`.
 
 Now try setting the variable to the variable * 2. You'll need 4 nodes: `Set Variable`, `Get Variable`, `Add`, and `Integer Constant`. **Don't forget to make the `Set Variable` node the [nearest control node](glossary://nearest%20control%20node) before trying to reference the variable; otherwise, it will not work.**
 
 + Note:
 You can access all of the math functions by drawing *M*. If you forget the shortcut for any other node, you can always draw *X* to get a full list of available nodes.
 
 + Callout(Challenge):
 `For` nodes also expose an index variable in the `Loop` output trigger. Try printing all of the numbers from 1 to 10 using a `For` node.
 
 */

