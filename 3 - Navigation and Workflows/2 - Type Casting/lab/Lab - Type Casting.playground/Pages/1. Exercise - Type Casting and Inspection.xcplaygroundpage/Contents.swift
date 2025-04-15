/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
print("--- Exercise 1 ---")
let myCollection: [Any?] = [3.14, 60, "Hiya", 100, false, nil]
print(myCollection)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myCollection {
    guard let dataItem: Any = item else {
        print("The collection has a nil in it")
        continue
    }
    if let myInteger = dataItem as? Int {
        print("The integer has a value of \(myInteger)")
    } else if let myDouble = dataItem as? Double {
        print("The double has a value of \(myDouble)")
    } else if let myString = dataItem as? String {
        print("The string has a value of \(myString)")
    } else if let myBoolean = dataItem as? Bool {
        print("The boolean has a value of \(myBoolean)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let myDictionary: [String: Any?] = ["pi":3.14, "angle":60, "Greeting":"Hiya", "other_angle":100, "test_results":false, "constructor":nil, "tau":"6.28"]

for (key, item) in myDictionary {
    guard let dataItem: Any = item else {
        print("The key of '\(key)' is nil")
        continue
    }
    if let myInteger = dataItem as? Int {
        print("The key of '\(key)' is a integer of value of \(myInteger)")
    } else if let myDouble = dataItem as? Double {
        print("The key of '\(key)' is a double of value of \(myDouble)")
    } else if let myString = dataItem as? String {
        print("The key of '\(key)' is a string of value of '\(myString)'")
    } else if let myBoolean = dataItem as? Bool {
        print("The key of '\(key)' is a boolean of value of \(myBoolean)")
    }
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (key, item) in myDictionary {
    guard let dataItem: Any = item else {
        continue
    }
    if let myInteger = dataItem as? Int {
        total += Double(myInteger)
    } else if let myDouble = dataItem as? Double {
        total += myDouble
    } else if let myString = dataItem as? String {
        total += 1.0
    } else if let myBoolean = dataItem as? Bool {
        if myBoolean {
            total += 2.0
        } else {
            total -= 3.0
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (key, item) in myDictionary {
    guard let dataItem: Any = item else {
        continue
    }
    if let myInteger = dataItem as? Int {
        total2 += Double(myInteger)
    } else if let myDouble = dataItem as? Double {
        total2 += myDouble
    } else if let myString = dataItem as? String {
        if let stringAsDouble = Double(myString) {
            total2 += stringAsDouble
        }
    }
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
