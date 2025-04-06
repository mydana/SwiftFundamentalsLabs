/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
print("--- Exercise - Create Functions ---")
func introduceMyself() {
    print("Hi my name is Dana and I am a student at Pasadena City College.")
}

func magicEightBall() {
    let randomNum = Int.random(in: 0...4)
    switch randomNum {
    case 0:
        print("It is certain.")
    case 1:
        print("It is decidedly so.")
    case 2:
        print("Without a doubt.")
    case 3:
        print("Yes - definitely.")
    default:
        print("No.")
    }
}


magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
