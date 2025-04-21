/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
print("--- Exercise 1 ---")
enum Suite: CaseIterable {
    case wands
    case swords
    case pentacles
    case cups
}
/*:
 Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
 */
var cardInHand: Suite = .cups
print(cardInHand)
/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */
cardInHand = .swords
print(cardInHand)
/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */
func getFortune(cardSuite:Suite) -> String {
    var element: String
    switch cardSuite {
    case .wands:
        element = "fire: Creativity, passion, inspiration, action, ambition, enthusiasm, and the pursuit of one's goals."
    case .swords:
        element = "air: Intellect, thoughts, communication, challenges, conflict, difficult decisions, and personal growth."
    case .pentacles:
        element = "element: Material matters, possessions, finances, practical aspects of life, security, stability, and financial prosperity."
    case .cups:
        element = "water: Emotions, feelings, intuition, relationships, love, compassion, and emotional fulfillment."
    }
    return "The suite \(cardSuite) represents \(element)"
}

/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */
struct Card {
    let suite: Suite
    enum Value: CaseIterable {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case page
        case knight
        case queen
        case king
    }
    let value: Value
    init() {
        self.suite = Suite.allCases.randomElement()!
        self.value = Value.allCases.randomElement()!
    }
    var name: String {
        get {
            return "\(self.value) of \(suite)"
        }
    }
    var numerology: String {
        get {
            var numerology: String
            switch value {
            case .ace:
                numerology = "Represents new beginnings, leadership, independence, ambition, and originality."
            case .two:
                numerology = "Symbolizes balance, harmony, cooperation, diplomacy, and intuition."
            case .three:
                numerology = "Indicates creativity, expression, optimism, and communication."
            case .four:
                numerology = "Represents stability, practicality, organization, and a strong foundation."
            case .five:
                numerology = "Symbolizes adventure, change, freedom, and versatility."
            case .six:
                numerology = "Indicates love, compassion, nurturing, and responsibility."
            case .seven:
                numerology = "Represents spirituality, intuition, introspection, and wisdom."
            case .eight:
                numerology = "Symbolizes power, material success, ambition, and leadership."
            case .nine:
                numerology = "Indicates humanitarianism, empathy, generosity, and completion."
            case .ten:
                numerology = "Represents wholeness, unity, and the completion of a karmic cycle."
            case .page:
                //https://learntarotinaday.com/lesson-4-court-cards/
                numerology = "Curious youngster, seeks experience."
            case .knight:
                //https://learntarotinaday.com/lesson-4-court-cards/
                numerology = "Young action type."
            case .queen:
                //https://learntarotinaday.com/lesson-4-court-cards/
                numerology = "Wisdom and influence."
            case .king:
                //https://learntarotinaday.com/lesson-4-court-cards/
                numerology = "Wisdom and authority, in control."
            }
            return "\(value) \(numerology)"
        }
    }
    var description: String {
        return "\(self.name)\n\(getFortune(cardSuite:self.suite))\n\(self.numerology))"
    }
}

print()
print("Your past:")
print(Card().description)
print()
print("Your present:")
print(Card().description)
print()
print("Your future:")
print(Card().description)
/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */


//: page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
