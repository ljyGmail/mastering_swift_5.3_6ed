import UIKit

// Chapter 4: Optional Types

// * Introducing optionals
var message: String = "My String"
// message = nil // nil cannot be  assigned to type 'String'

var myString: String?

var myString1: String?
var myString2: Optional<String>

// Internally, an optional is defined as follows:
enum Optional<T> {
    case None
    case Some(T)
}

// * The need for optional types in Swift
/*
var myString: String
print(myString)
 */

// * Defining an optional
var myOptional: String?

// * Using optionals

// ** Forced unwrapping of an optional
/*
var myForcedString: String?
myForcedString = "test"

var foredResult = myForcedString!
 */

// verify the optional contains a valid vlaue before unwrapping it
var myForcedString: String?
myForcedString = "test"

if myForcedString != nil {
    var test = myForcedString!
}

// ** Optional binding (Recommended way)
var myBindingString: String?
myBindingString = "Space, the final frontier"

if let tempVar = myBindingString {
    print(tempVar)
} else {
    print("No value")
}

// use optional binding to unwrap multiple optionals
/*
if let tmp1 = optiona1, let tmp2 = optional2, let tmp3 = optiona3 {
    
}
 */

var mySameNameOptional: String?
mySameNameOptional = "Same Name"

if let mySameNameOptional = mySameNameOptional {
    print(mySameNameOptional)
} else  {
    print("mySameNameOptional was nil")
}

// the temporary variable is scoped only for the conditional block
var myScopeOptional: String?
myScopeOptional = "test"
if var myScopeTmp = myScopeOptional {
    print("Inside: \(myScopeTmp)")
}

// This line will cause a compile time error
// print(myScopeTmp)

// ** Optional types with tuples
var tuple1: (one: String, two: Int)?
var tuple2: (one: String, two: Int?)

// ** Optional chaining
// var tireSize = car?.tires?.tireSize

// ** The nil coalescing operator
var defaultName = "Jon"
var optionalA: String?
var optionalB: String?
optionalB = "Buddy"
var nameA = optionalA ?? defaultName
var nameB = optionalB ?? defaultName

// the nil coalescing operator is shorthand for using the ternary operator:
var nameC = optionalA != nil ? optionalA! : defaultName
