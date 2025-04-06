/*:
 ## Exercise - Ternary Operator
 
 Refactor the code below so that `largest` is declared and assigned to in one line using the ternary operator.
 */
print("---- Page 8 ----")
let number1 = 14
let number2 = 25

//var largest: Int
//if number1 > number2 {
//    largest = number1
//} else {
//    largest = number2
//}

var largest = number1 > number2 ? number1 : number2

print("The largest of \(number1) and \(number2) is \(largest)")
print("==== Page 8 Complete ====\n")
//: [Previous](@previous)  |  page 8 of 9  |  [Next: App Exercise - Ternary Messages](@next)
