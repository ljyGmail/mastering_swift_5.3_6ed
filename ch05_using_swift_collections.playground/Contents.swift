import UIKit

// Chpater 5: Using Swift Collections

// * Swift collection types
// ** Mutability

// * Arrays
// ** Creating and initializing arrays
// define an immutable array of integers
let arrayOne = [1, 2, 3]

// define a mutable array
var arrayTwo = [4, 5, 6]

// declare an empty mutable array
// var arrayThree = [Int]()
var arrayThree: [Int] = []

// create arrays of various data types
/*
var array1 = [String]()
var array2 = [Double]()
var array3 = [MyObject]()
 */

// define arrays whose elements are of different types
var myArray: [Any] = [1, "Two"]

// An array can be initialized to a certain size with all the elements set to a predefined value.
var arrayFour = [Int](repeating: 3, count: 7)

// two ways to create a two-dimensional array
var multiArrayOne = [[1, 2], [3, 4], [5, 6]]
var multiArrayTwo = [[Int]]()

// ** Accessing the array element
let arrayAccessing = [1, 2, 3, 4, 5, 6]
print(arrayAccessing[0]) // Displays 1
print(arrayAccessing[3]) // Displays 4

// retrieve an individual value from a two-dimensional array
let multiArray = [[1, 2], [3, 4], [5, 6]]
let arr = multiArray[0] // arr contains the array [1, 2]
let value = multiArray[0][1] // value contains 2

// use first and last properties to retrieve the first and last elements
let arrayFirstLast = [1, 2, 3, 4, 5, 6]
let first = arrayFirstLast.first // first contains 1
let last = arrayFirstLast.last // last contains 6

let multiArrayFirstLast = [[1, 2], [3, 4], [5, 6]]
let arrFirst1 = multiArrayFirstLast[0].first // arrFirst1 contains 1
let arrFirst2 = multiArrayFirstLast.first // arrFirst2 contains [1, 2]
let arrLast1 = multiArrayFirstLast[0].last // arrLast1 contains 2
let arrLast2 = multiArrayFirstLast.last // arrLast2 contains [5, 6]

// ** Counting the elements of an array
let arrayOneCount = [1, 2, 3]
let multiArrayOneCount = [[3, 4], [5, 6], [7, 8]]

print(arrayOneCount.count) // Displays 3
print(multiArrayOneCount.count) // Displays 3 for the three arrays
print(multiArrayOneCount[0].count) // Displays 2 for the two elements

let arrayTwoCount = [0, 1]
print(arrayTwoCount[0]) // Displays 0
print(arrayTwoCount[1]) // Displays 1
print(arrayTwoCount.count) // Displays 2

// array index out of range error
// This example will throw an array index out of range error
let arrayOneIndexRange = [1, 2, 3, 4]
// print(arrayOneIndexRange[6])

// THis example will not throw an array index out of range error
let arrayTwoIndexRange = [1, 2, 3, 4]
if (arrayTwoIndexRange.count > 6) {
    print(arrayTwoIndexRange[6])
}

// ** Is the array empty?
var arrayOneEmpty = [1, 2]
var arrayTwoEmpty = [Int]()

arrayOneEmpty.isEmpty // Returns false because the array is not empty
arrayTwoEmpty.isEmpty // Returns true because the array is empty

// ** Shuffling an array
var arrayOneShuffle = [1, 2, 3, 4, 5, 6]
arrayOneShuffle.shuffle()
let shuffledArray = arrayOneShuffle.shuffled()

// ** Appending to an array
var arrayOneAppend = [1, 2]
arrayOneAppend.append(3) // arrayOneAppend will now contain 1, 2, and 3

// use addition assignment operator (+=) to append an array to another array
var arrayTwoAppend = [1, 2]
arrayTwoAppend += [3, 4] // arrayTwoAppend will now contain 1, 2, 3 and 4

// ** Inserting a value into an array
var arrayOneInsert = [1, 2, 3, 4, 5]
arrayOneInsert.insert(10, at: 3) // arrayOneInsert now contains 1, 2, 3, 10, 4 and  5

// ** Replacing elements in an array
var arrayOneReplace = [1, 2, 3]
arrayOneReplace[1] = 10 // arrayOneReplace now contains 1, 10, 3
arrayOneReplace

// ** Removing elements from an array
var arrayOneRemove = [1, 2, 3, 4, 5]
arrayOneRemove.removeLast() // arrayOneRemove now contains 1, 2, 3 and 4
arrayOneRemove.remove(at: 2) // arrayOneRemove now contains 1, 2 and 4
arrayOneRemove.removeAll() // arrayOneRemove is now empty
arrayOneRemove.isEmpty

// removeLast() and remove(at:) methods also return the value of the element being removed
var arrayTwoRemove = [1, 2, 3, 4, 5]
var removed1 = arrayTwoRemove.removeLast() // romoved1 contains the value 5
var removed2 = arrayTwoRemove.remove(at: 2) // removed2 contains the value 3

// ** Merging two arrays
let arrayOneMerge = [1, 2]
let arrayTwoMerge = [3, 4]
var combined = arrayOneMerge + arrayTwoMerge // combine contains 1, 2, 3, and 4

// ** Retrieving a subarray from an array
let arrayOneSub = [1, 2, 3, 4, 5]
// two-sided range operator
var subArrayOne = arrayOneSub[2...4] // subArrayOne contains 3, 4 and 5

let arrayTwoSub = [1, 2, 3, 4, 5]
// half-open range operator
var subArrayTwo = arrayTwoSub[2..<4] // subArrayTwo contains 3 and 4

let arrayThreeSub = [1, 2, 3, 4, 5]
// one-sided range operators
var subArrayThreeA = arrayThreeSub[..<3] // subArrayThreeA contains 1, 2 and 3
var subArrayThreeB = arrayThreeSub[...3] // subArrayThreeB contains 1, 2, 3 and 4
var subArrayThreeC = arrayThreeSub[2...] // subArrayThreeC contains 3, 4 and 5

// RangeSet: subrange of indexes that are non-contiguous
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Not Working!
// let  evenNum = numbers.subranges(where: {$0.isMultiple(of: 2)})
// print(numbers[evenNum].count)
// numbers[evenNum] contains 2, 4, 6, 8, 10

// ** Making bulk changes to an array
var arrayOneBulk = [1, 2, 3, 4, 5]
arrayOneBulk[1...2] = [12, 13] // arrayOneBulk contains 1, 12, 13, 4 and5
arrayOneBulk

// The number of elements that changing in the range operator 
// does not need to match the number of values that are passing in.
var arrayTwoBulk = [1, 2, 3, 4, 5]
arrayTwoBulk[1...3] = [12, 13]
arrayTwoBulk

var arrayThreeBulk = [1, 2, 3, 4, 5]
arrayThreeBulk[1...3] = [12, 13, 14, 15]
arrayThreeBulk

// ** Algorithms for aaryas
// *** Sort
var arrayOneSort = [9, 3, 6, 2, 8, 5]
arrayOneSort.sort() { $0 < $1 }
arrayOneSort // arrayOneSort contains 2, 3, 5, 6, 8 and 9

// to sort an array in ascending order, just call sort() method without using a closure
var arrayTwoSort = [9, 3, 6, 2, 8, 5]
arrayTwoSort.sort()
arrayTwoSort // arrayTwoSort contains 2, 3, 5, 6, 8 and 9

// reverse the sort order
var arrayThreeSort = [9, 3, 6, 2, 8, 5]
arrayThreeSort.sort() { $1 < $0 }
arrayThreeSort // arrayThreeSort contains 9, 8, 6, 5, 3 and 2

// the preceding code can be simplified by using sort(by:) method
var arrayFourSort = [9, 3, 6, 2, 8, 5]
arrayFourSort.sort(by: <)
arrayFourSort // arrayFourSort contains 2, 3, 5, 6, 8 and 9

// *** Sorted
var arrayOneSorted = [9, 3, 6, 2, 8, 5]
let sorted = arrayOneSorted.sorted() { $0 < $1 }
sorted // sorted contains 2, 3, 5, 6, 8 and 9
arrayOneSorted // arrayOneSorted contains 9, 3, 6, 2, 8, 5

// *** Filter
var arrayOneFilter = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let filtered = arrayOneFilter.filter { $0 > 3 && $0 < 7 }
filtered // filtered contains 4, 5 and 6

var cityFilter = ["Boston", "London", "Chicago", "Atlanta"]
let filteredCity = cityFilter.filter { $0.range(of: "o") != nil }
filteredCity // filteredCity contains "Boston", "London" and "Chicago"

// *** Map
var arrayOneMap = [10, 20, 30, 40]
let appliedOne = arrayOneMap.map { $0 / 10 }
appliedOne // appliedOne contains 1, 2, 3 and 4

// The new array created by the map algorithm is not required
// to contain the same element types as the original array.
var arrayTwoMap = [1, 2, 3, 4]
let appliedTwo = arrayTwoMap.map { "num:\($0)" }
appliedTwo // appliedTwo contains "num:1", "num:2", "num:3", "num:4"

// *** Count
let arrayOneFilterCount = [95, 90, 75, 80, 60]
let count = arrayOneFilterCount.filter { $0 >= 90 }.count
count // count is 2

var cityFilterCount = ["Boston", "London", "Chicago", "Atlanta"]
let count2 = cityFilterCount.filter { $0.range(of: "o") != nil }.count
count2 // count2 is 3

// *** Diff
var scores1 = [100, 81, 95, 98, 99, 65, 87]
var scores2 = [100, 98, 95, 91, 83, 88, 72]

let diff = scores2.difference(from: scores1)
var newArray = scores1.applying(diff) ?? []

// *** forEach
var arrayOneForEach = [10, 20, 30, 40]
arrayOneForEach.forEach { print($0) }

// ** Iterating over an array
var arrayOneIterate = ["one", "two", "three"]
for item in arrayOneIterate {
    print(item)
}

// get the index
var arrayTwoIterate = ["one", "two", "three"]
for (index, value) in arrayTwoIterate.enumerated() {
    print("\(index) \(value)")
}

// * Dictionaries
// ** Creating and initialzing dictionaries

// ** Accessing dictionary values

// ** Counting the keys or values in a dictionary

// ** Is the dictionary empty?

// ** Updating the value of a key

// ** Adding a key-value pair

// ** Removing a key-value pair

// * Set
// ** Initializing a set

// ** Inserting items into a set

// ** Determining the number of items in a set

// ** Checking whether a set contains an item

// ** Iterating over a set

// ** Removing items in a set

// ** Set operations
