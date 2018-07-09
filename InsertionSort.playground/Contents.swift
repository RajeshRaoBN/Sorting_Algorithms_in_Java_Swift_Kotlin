import UIKit

// First let us create a random array of integers
let lengthOfArray = 10
let randomInteger = Int.random(in: 1..<10)  // This is how we can generate random numbers in swift
// Let us create a sequence of numbers
let sequenceOfNumbers = 0..<10
// Now let us shuffel the sequence
var shuffeledSequence = sequenceOfNumbers.shuffled()
print(shuffeledSequence)
func insertionSort(inputArrayCons: Array<Int>) -> Array<Int> {
    var inputArray = inputArrayCons
    let inputArrayLength = inputArray.count
    var i = 0
    while (i < inputArrayLength) {
        var j = i
        while (j > 0 && inputArray[j - 1] > inputArray[j]){
            let swappingItem = inputArray[j]
            inputArray[j] = inputArray[j-1]
            inputArray[j-1] = swappingItem
            j -= 1
            //print(inputArray)
        }
        i += 1
    }
    return inputArray
}
insertionSort(inputArrayCons: shuffeledSequence)
