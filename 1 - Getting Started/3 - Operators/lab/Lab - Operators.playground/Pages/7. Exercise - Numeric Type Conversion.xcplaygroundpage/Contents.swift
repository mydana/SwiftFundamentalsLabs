/*:
 ## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
print("---- Page 7 ----")
let x = 10
let y = 3.2
let multipliedAsIntegers = x * Int(y)
print("multipliedAsIntegers: \(multipliedAsIntegers)")
/*:
 Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
 */
let multipliedAsDoubles = Double(x) * y
print("multipliedAsDoubles: \(multipliedAsDoubles)")

/*:
 Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
 */
print("These are different because when y is cast to an Int, the decimal part is truncated, and that changes the product.")
print("==== Page 7 Complete ====")
//: [Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
