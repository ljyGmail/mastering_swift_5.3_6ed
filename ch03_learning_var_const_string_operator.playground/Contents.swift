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

// * Enumerations

// * Opertators
// ** The assignment operator

// ** Comparison operators

// ** Arithmetic operators

// ** The remainder operator

// ** Compound assignment operators

// ** The closed range operator

// ** The half-open range operator

// ** The ternary conditional operator

// ** The logical NOT operator

// ** The logical AND operator

// ** The logical OR operator
