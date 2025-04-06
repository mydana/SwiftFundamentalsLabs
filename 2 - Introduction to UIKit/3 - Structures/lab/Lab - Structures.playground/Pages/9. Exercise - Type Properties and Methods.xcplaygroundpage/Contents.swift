/*:
 ## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
print("--- Exercise - Type Properties and Methods ---")
struct User: Equatable {
    var userName: String
    var email: String
    var age: Int
    init(userName: String, email: String, age: Int) {
        self.userName = userName
        self.email = email
        self.age = age
    }
    static var currentUser: User? = nil
    static func logIn(user: User) {
        self.currentUser = user
    }
    // See if this user is logged in or not.
    func isLoggedIn()->Bool {
        guard let loggedInUser: User = User.currentUser else {
            return false
        }
        return loggedInUser == self
    }
}
var dana = User(userName: "drunge", email: "drunge@go.pasadena.edu", age: 55)
var stephanie = User(userName: "steph", email: "steph@go.pasadena.edu", age: 23)
print("Initial condition")
print(dana)
print(stephanie)
print("Is Dana logged in? \(dana.isLoggedIn())")
print("Is Stephanie logged in? \(stephanie.isLoggedIn())")
print("Logging in dana")
User.logIn(user:dana)
print("Is Dana logged in? \(dana.isLoggedIn())")
print("Is Stephanie logged in? \(stephanie.isLoggedIn())")

/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */


//: [Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
