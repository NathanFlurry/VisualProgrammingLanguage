//#-hidden-code
import UIKit
import PlaygroundSupport

let canvasViewController = CanvasViewController()

PlaygroundPage.current.liveView = canvasViewController
//#-end-hidden-code

/*:
 test test test
 
 * a
 * b
 * c
 */

//
//
//let arraySize = /*#-editable-code*/50/*#-end-editable-code*/
//
////#-hidden-code
//let array = VisualSortableArray.init(arraySize: arraySize)
//
//func compare(i: Int, j: Int) -> Int{
//    return array.compare(i: i, j: j)
//}
//
//func swap(i: Int, j: Int) -> Bool {
//    return array.swap(i: i, j: j)
//}
//
//func select(i: Int, j: Int) -> Bool {
//    return array.select(i: i, j: j)
//}
//
//PlaygroundPage.current.liveView = array.view
//
//DispatchQueue.global(qos: .background).async {
//    sleep(2)
////#-end-hidden-code
//while true {
//    var swapped = false
//    
//    for i in 1..<array.count {
//        select(i: i, j: i-1)
//        if compare(i: i, j: i-1) < 0{
//            swap(i: i, j: i-1)
//            swapped = true
//        }
//    }
//    if !swapped {
//        break
//    }
//}
////#-hidden-code
//}
////#-end-hidden-code
