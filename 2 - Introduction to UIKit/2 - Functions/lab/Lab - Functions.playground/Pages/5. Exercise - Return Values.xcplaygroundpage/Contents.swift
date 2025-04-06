/*:
 ## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
print("--- Exercise - Return Values ---")
func greeting(name: String = "World") -> String {
    if name == "World" {
        return "Hello World! I'm ready to take over."
    } else {
        return "Hi, \(name)! How are you?"
    }
}
print(greeting(name: "Dana"))
print(greeting())
/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func multiplyPlusTwo(_ x: Int, _ y: Int) -> Int {
    return x * y + 2
}
print(multiplyPlusTwo(5, 7))
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
