/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
print("--- Exercise 5 ---")
struct Computer {
    let ram: Int
    let yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        guard ram > 0 else {
            return nil
        }
        guard yearManufactured > 1970 else {
            return nil
        }
        guard yearManufactured < 2017 else {
            return nil
        }
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}

func printComputer(possibleMachine: Computer?) {
    if let machine = possibleMachine {
        print("ram: \(machine.ram) year manufactured: \(machine.yearManufactured)")
    } else {
        print("Not a suitable computer")
    }
}
/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
let computerA = Computer(ram: 30, yearManufactured: 2000)
let computerB = Computer(ram: 30, yearManufactured: 1960)

printComputer(possibleMachine: computerA)
printComputer(possibleMachine: computerB)
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
