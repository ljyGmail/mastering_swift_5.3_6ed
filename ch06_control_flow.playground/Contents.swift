import UIKit

// Chapter 6: Control Flow

// * What have we learned so far?

// * Curly brackets
// curly brackets are needed even if there is only one statement to execute
/*
if (x > y) {
    x = 0
}
 */

// * Parentheses
// parentheses around conditional expressions are optional
/*
if x > y {
    x = 0
}
 */

// ** Control flow

// * Conditional statements
// ** The if statement
let teamOneScore = 7
let teamTwoScore = 6

if teamOneScore > teamTwoScore {
    print("Team One Won")
}

// *** Conditional code execution with the if...else statement
if teamOneScore > teamTwoScore {
    print("Team One Won")
} else {
    print("Team Two Won")
}

// use multiple else if statements and an else statement at the end
if teamOneScore > teamTwoScore {
    print("Team One Won")
} else if teamTwoScore > teamOneScore {
    print("Team Two Won")
} else {
    print("We have a tie")
}

// ** The guard statement
func guardFunction(str: String?) {
    guard let goodStr = str else {
        print("Input was nil")
        return
    }

    print("Input was \(goodStr)")
}

// ** The switch statement
var speed = 300000000

switch speed {
case 300000000:
    print("Speed of light")
case 340:
    print("Speed of sound")
default:
    print("Unknow speed")
}

// Every switch statement must have a match for all the possible values.
/*
var num = 5

switch num {
case 1:
    print("Number is one")
case 2:
    print("Number is two")
case 3:
    print("Number is three")
}
 */

var char: Character = "e"

switch char {
case "a", "e", "i", "o", "u":
    print("letter is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("letter is a consonant")
default:
    print("unknow letter")
}

// check a value whether it is included in a range
var grade = 93
switch grade {
case 90...100: print("Grade is an A")
case 80...89: print("Grade is a B")
case 70...79: print("Grade is a C")
case 60...69: print("Grade is a D")
case 0...59: print("Grade is a F")
default:
    print("Unknow Grade")
}

// any case statement contain an optional where clause
var studentId = 4
grade = 57
switch grade {
case 90...100:
    print("Grade is an A")
case 80...89:
    print("Grade is a B")
case 70...79:
    print("Grade is a C")
case 55...69:
    print("Grade is a D for student 4")
case 60...69:
    print("Grade is a D")
case 0...59:
    print("Grade is F")
default:
    print("Unknown Grade")
}

// the order of case statements is important!
switch grade {
case 90...100:
    print("Grade is an A")
case 80...89:
    print("Grade is a B")
case 70...79:
    print("Grade is an C")
case 60...69:
    print("Grade is a D")
case 0...59:
    print("Grade is a F")
    // The following case statement would never be reached because
    // the grades would always match one of the previous two
case 55...69 where studentId == 4:
    print("Grade is a D for student 4")
default:
    print("Unknown Grade")
}

// switch statement for enumeration
enum Product {
    case Book(String, Double, Int)
    case Puzzle(String, Double)
}

var order = Product.Book("Mastering Swift 4", 49.99, 2017)

switch order {
case .Book(let name, let price, let year):
    print("You ordered the book \(name): \(year) for \(price)")
case .Puzzle(let name, let price):
    print("You ordered the book \(name) for \(price)")
}

enum Planets {
    case Mercury, Venus, Earth, Mars, Jupiter
    case Saturn, Uranus, Neptune
}

var planetWeLiveOn = Planets.Earth
switch planetWeLiveOn {
case .Mercury:
    print("We live on Mercury, it is very hot!")
case .Venus:
    print("We live on Venus, it is very hot!")
case .Earth:
    print("We live on Earth, just right")
case .Mars:
    print("We live on Mars, a little cold")
case .Jupiter, .Saturn, .Uranus, .Neptune:
    print("Where do we live?")
}

// add a default statement to handle any additional planets if they are added in later
switch planetWeLiveOn {
case .Mercury:
    print("We live on Mercury, it is very hot!")
case .Venus:
    print("We live on Venus, it is very hot!")
case .Earth:
    print("We live on Earth, just right")
case .Mars:
    print("We live on Mars, a little cold")
case .Jupiter, .Saturn, .Uranus, .Neptune:
    print("Where do we live?")
@unknown default:
    print("Unknown planet")
}

var cities1 = ["London", "Paris", "Seattle", "Boston", "Moscow"]
var cities2 = ["London", "Paris", "Tulsa", "Boston", "Tokyo"]

let diff = cities2.difference(from: cities1)

for change in diff {
    switch change {
    case .remove(let offset, let element, _ ):
        cities2.remove(at: offset)
    case .insert(let offset, let element, _ ):
        cities2.insert(element, at: offset)
    }
}

cities1
cities2

cities1 = ["London", "Paris", "Seattle", "Boston", "Moscow"]
cities2 = ["London", "Paris", "Tulsa", "Boston", "Tokyo"]

for change in diff {
    switch change {
    case .remove(let offset, let element, _ ):
        cities2.remove(at: offset)
    default:
        break
    }
}

cities1
cities2

// use switch with tuples
let myDog = ("Maple", 4)

switch myDog {
case ("Lily", let age):
    print("Lily is my dog and is \(age)")
case ("Maple", let age):
    print("Maple is my dog and is \(age)")
case ("Dash", let age):
    print("Dash is my dog and is \(age)")
default:
    print("unknown dog")
}

// use underscore (wildcard) and range operators with tuples
switch myDog {
case (_, 0...1):
    print("Your dog is a puppy")
case (_, 2...7):
    print("Your dog is middle aged")
case (_, 8...):
    print("Your dog is getting old")
default:
    print("Unknown")
}

// *** Match on wildcard
let myNumber = 10
switch myNumber {
case _ where myNumber.isMultiple(of: 2):
    print("Multiple of 2")
case _ where myNumber.isMultiple(of: 3):
    print("Multiple of  3")
default:
    print("No Match")
}

// * Loops

// ** The for-in loop
// *** Using the for-in loop

// ** The while loop
// *** Using the while loop

// *** Using the repeat-while loop

// * Using case and where statements with conditional statements and loops
// ** Filtering with the where statement

// ** Filtering with the for-case statement

// ** Using the if-case statement

// * Control transfer statements
// ** The continue statement

// ** The break statement

// ** The fallthrough statement
