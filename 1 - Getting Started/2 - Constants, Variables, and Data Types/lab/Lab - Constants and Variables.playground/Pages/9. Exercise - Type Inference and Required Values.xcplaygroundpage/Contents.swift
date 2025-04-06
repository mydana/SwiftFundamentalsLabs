/*:
 ## Exercise - Type Inference and Required Values
 
 Declare a variable called `name` of type `String`, but do not give it a value. Print `name` to the console. Does the code compile? Remove any code that will not compile.
 */
print("==========")
var name: String
// print(name)
print("Variable 'name' used without being initialized")
/*:
 Now assign a value to `name`, and print it to the console.
 */
name = "Dana Runge"
print(name)
/*:
 Declare a variable called `distanceTraveled` and set it to 0. Do not give it an explicit type.
 */
var distanceTraveled = 0

/*:
 Now assign a value of 54.3 to `distanceTraveled`. Does the code compile? Go back and set an explicit type on `distanceTraveled` so the code will compile.
 */
// distanceTraveled = 54.3
print("distanceTraveled = 54.3")
print("Cannot assign value of type 'Double' to type 'int'")

//: [Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Percent Completed](@next)
