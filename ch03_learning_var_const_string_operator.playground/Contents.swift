import UIKit

// Chapter 3: Learning about Variables, Constants, Strings,  and Operators

// * Constants and variables
// ** Defining constants and variables
// Constants

/*
let freezingTemperatureOfWaterCelsius = 0
let speedOfLightKmSec = 300000
 */

// Variables
/*
var currentTemperature = 22
var currentSpeed = 55
 */

// declare multiple constants or variables in a single line by separating them with a comma:
// Constants
// let freezingTemperatureOfWaterCelsius = 0, speedOfLightKmSec = 300000

// Variables
var currentTemperature = 22, currentSpeed = 55

// speedOfLightKmSec = 299999


// ** Type safety
var integerVar = 10
// integerVar = "My String"

// ** Type inference
var myInt = 1

// var x = 3.14 // Double type
var y = "Hello" // String type
var z = true // Boolean type

// ** Explicit types
// var x: Float = 3.14
// var x: Float = "My str"
// var x // Type annotation missing in pattern
var x: Int // explicitly defind a variable a type


// * Numeric types
// ** Integer types
print("UInt8 max \(UInt8.max)")
print("UInt8 min \(UInt8.min)")

print("UInt16 max \(UInt16.max)")
print("UInt16 min \(UInt16.min)")

print("UInt32 max \(UInt32.max)")
print("UInt32 min \(UInt32.min)")

print("UInt64 max \(UInt64.max)")
print("UInt64 min \(UInt64.min)")

print("UInt max \(UInt.max)")
print("UInt min \(UInt.min)")

print("Int8 max \(Int8.max)")
print("Int8 min \(Int8.min)")

print("Int16 max \(Int16.max)")
print("Int16 min \(Int16.min)")

print("Int32 max \(Int32.max)")
print("Int32 min \(Int32.min)")

print("Int64 max \(Int64.max)")
print("Int64 min \(Int64.min)")

print("Int max \(Int.max)")
print("Int min \(Int.min)")

// binary, octal, and hexadecimal numbers:
var decimal = 95
var binary = 0b1011111
var octal = 0o137
var hex = 0x5f

// insert arbitary underscores in numeric literals
let speedOfLightKmSec = 300_000

// the use of isMultiple(of:) method of the Integer type

/*
let number = 4

if number % 2 == 0 {
    print("Even")
} else {
    print("Odd")
}
 */

let number = 4

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

// ** Floating-point and Double values
let f: Float = 0.111_111_111 + 0.222_222_222
let d: Double = 0.111_111_111 + 0.222_222_222

let f1: Float = 0.111_111_166 + 0.222_222_222
let d1: Double = 0.111_111_166 + 0.222_222_222

/*
var a: Int = 3
var  b: Double = 0.14
var c = a + b // Binary operator '+' cannot be applied to operands of type Int and Double
 */

var a: Int = 3
var b: Double = 0.14
var c = Double(a) + b

// convenience initializers
var intVar = 32
var floatVar = Float(intVar)
var uint16Var = UInt16(intVar)

// * The Boolean type
let swiftIsCool = true
var itIsRaining = false

let isSwiftCool = true
var isItRaining = false

if isSwiftCool {
    print("YEA, I cannot wait to learn it")
}

if isItRaining {
    print("Get a rain coat")
}

// toggle the value of a Boolean variable
isItRaining = !isItRaining

// toggle() method of the Boolean type
isItRaining.toggle()

// * The String type
var stringOne = "Hello"
var stringTwo = "World"

var multiLine = """
This is a multiline string literal.
This shows how we can create a string over multiple lines.
"""

// use quotes to quote specific text in multiline string
multiLine = """
This is a multiline string literal.
This shows how we can create a string over multiple lines.
Jon says, "multiline string literals are cool"
"""

// iterator each character of a string
for char in stringOne {
    print(char)
}

stringOne.map {
    print($0)
}

var stringA = "A"
var stringB = "B"
var stringC = stringA + stringB
stringA += stringB

// include a string in-line with another string
stringA = "Jon"
stringB = "Hello \(stringA)"

// escape
let str = "The main character said \"hello\""

// raw string
let str1 = #"The main character said "hello""#

// string interpolation in raw string
let ans = 42
var str2 = #"The answer is \#(ans)"#

// mutability
var m = "Hello"
let n = "HI"
var o = " World"

// This is valid because x is mutable
m += o

// This is invalid because y is not mutable
// n += o

// convert the case of the string
stringOne = "hElLo"
print("Lowercase String: \(stringOne.lowercased())")
print("Uppercase String: \(stringOne.uppercased())")

// equality
stringOne = "Hello Swift"
stringTwo = ""

stringOne.isEmpty // false
stringTwo.isEmpty // true

stringOne == "hello swift" // false
stringOne == "Hello Swift" // true

stringOne.hasPrefix("Hello") // true
stringOne.hasSuffix("Hello") // false

// replace
stringOne = "one,to,three,four"
stringTwo = stringOne.replacingOccurrences(of: "to", with: "two")
print(stringTwo)

// substring
var path = "/one/two/three/four"

// Create start and end indexes
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)

let sPath = path[startIndex ..< endIndex] // returns the "/two/three"
// convert the substring to a string
let newStr = String(sPath)

path[..<startIndex]
path[endIndex...]

path.last
path.first

// retrieve the number of characters in a string
var length = path.count

// * Tuples
// define a tuple:
// var team = ("Boston", "Red Sox", 97, 65, 59.9)

// decompose a tuple into a set of variables
/*
var (city, name, wins, losses, percent) = team
city
name
wins
losses
percent
 */

// the values of a tuple can also be retrieved by specifying the location of the value
/*
var city = team.0
var name = team.1
var wins = team.2
var losses = team.3
var percent = team.4
city
name
wins
losses
percent
 */

// named tuples
var team = (city:"Boston", name:"Red Sox", wins:97, losses:65, percent:59.9)
team.city
team.name
team.wins
team.losses
team.percent

// * Enumerations
/*
enum Planets {
    case mercury
    case venus
    case earth
    case mars
    case Jupiter
    case Saturn
    case Uranus
    case neptune
}
 */

// a shorter version
enum Planets {
    case mecury, venus, earth, mars, jupiter
    case saturn, uranus, neptune
}

// use the Planets enumeration like this:
var planetWeLiveOn = Planets.earth
var furthestPlanet = Planets.neptune

// Once the variable type is inferred, a new value can be assigned without the Planet prefix
planetWeLiveOn = .mars

// Compare enumeration values

// Using the traditional == operator
if planetWeLiveOn == .earth {
    print("Earth it is")
}

// Using the switch statement
switch planetWeLiveOn {
case .mecury:
    print("We live on Mercury, it is very hot!")
case .venus:
    print("We live on Venus, it is very hot!")
case .earth:
    print("We live on Earth, just right")
case .mars:
    print("We live on Mars, a little cold")
default:
    print("Where do we live?")
}

// Define an enumeration with string values
enum Devices: String {
    case MusicPlayer = "iPod"
    case Phone = "iPhone"
    case Tablet = "iPad"
}

print("We are using an \(Devices.Tablet.rawValue)")

// assign numbers to the members
enum Planets2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}

print("Earth is planet number \(Planets2.earth.rawValue)")

// enumertions can also have associated values
enum Product {
    case Book(Double, Int, Int)
    case Puzzle(Double, Int)
}

var masterSwift = Product.Book(49.99, 2017, 310)
var worldPuzzle = Product.Puzzle(9.99, 200)

switch masterSwift {
case .Book(let price, let year, let pages):
    print("Mastering Swift was published in \(year) for the price of \(price) and has \(pages) pages")
case .Puzzle(let price, let pieces):
    print("Mastering Swift is a puzzle with \(pieces)  and sells for \(price)")
}

switch worldPuzzle {
case .Book(let price, let year, let pages):
    print("World Puzzle was  published in \(year) for the price of \(price) and has \(pages) pages")
case .Puzzle(let price, let pieces):
    print("World Puzzle is a puzzle with \(pieces) and sells for \(price)")
}

// conformance of the Comparable protocol
enum Grades: Comparable {
    case f
    case d
    case c
    case b
    case a
}

let acceptableGrade = Grades.c
let testOneGrade = Grades.b

if testOneGrade < acceptableGrade {
    print("Grade is unacceptable")
} else {
    print("Grade is acceptable")
}

// * Opertators
// ** The assignment operator
/*
let x = 1
var y  "Hello"
a = b
 */

// ** Comparison operators
2 == 1 // false, 2 does not equal 1
2 != 1 // true, 2 does not equal 1
2 > 1 // true, 2 is greater than 1
2 < 1 // false, 2 is not less than 1
2 >= 1 // true, 2 is greater or equal to 1
2 <= 1 // false, 2 is not less or equal to 1

// ** Arithmetic operators
var sum = 4 + 2 // sum will equal 6
var diff = 4 - 2 // diff will equal 2
var prod = 4 * 2 // prod will equal 8
var quot = 4 / 2 // quot will equal 2
var concat = "Hello " + "World" // concat will equal "Hello World"

// ** The remainder operator
10 % 3
10 % 6

// ** Compound assignment operators
var compund = 6
compund += 2 // compound is now 8
compund -= 2 // compound is now 6
compund *= 2 // compound is now 12
compund /= 2 // compound is now 6

// ** The closed range operator
for i in 1...3 {
    print("Number: \(i)")
}

// ** The half-open range operator
for i in 1..<3 {
    print("Number: \(i)")
}

// ** The ternary conditional operator
var xx = 2
var yy = 3

var zz = (yy > xx ? "yy is greater" : "xx is  greater") // zz equals "yy is greater"

// ** The logical NOT operator
var playPingpong = true
var notPlay = !playPingpong // notPlay equals false

// ** The logical AND operator
var mm = true
var nn = false
var oo = mm && nn // oo equals false

// ** The logical OR operator
var pp = mm || nn // pp equals true
