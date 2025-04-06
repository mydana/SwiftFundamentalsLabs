/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
print("--- Exercise - Methods ---")

struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
//    init(title: String) {
//        self.title = title
//        self.author = "Me"
//        self.pages = 100
//        self.price = 100.00
//    }
    func description() {
        print("\(title) by \(author) pages:\(pages) for only $\(price)")
    }
}
let feynman = Book(title: "Surely you're Joking Mr. Feynman", author: "Richard Feynman", pages:352, price:18.98)
print(feynman)
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int = 0
    var numberOfComments: Int = 0
    mutating func like() {
        self.likes = self.likes + 1
    }
}
var myPost = Post(message:"This is an exercise")
print(myPost)
myPost.like()
print(myPost)

//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
