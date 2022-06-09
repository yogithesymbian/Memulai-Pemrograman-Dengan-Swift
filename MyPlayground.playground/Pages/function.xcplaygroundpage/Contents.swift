//: [Previous](@previous)

import Foundation

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Gilang"))
print(greet(person: "Dimas"))

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }

    var currentMin = array[0]
    var currentMax = array[0]
    print("currentMin \(currentMin)")
    print("currentMax \(currentMax)")
    
    for value in array[1..<array.count] {
        print("value diluar if \(value)")
        if value < currentMin {
            currentMin = value
            print("value (\(value) < currentMinx (\(currentMin)")
        } else if value > currentMax {
            currentMax = value
            print("value (\(value) < currentMax (\(currentMax)")
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

if let emptyBound = minMax(array: []) {
    print("Min is \(emptyBound.min)")
} else {
    print("emptyBound is empty")
}

// MARK: Label Argumen dan Nama Parameter dalam Function

func someFunction(firstName: String, lastName: String) {
    //
}
someFunction(firstName: "Yogi", lastName: "Arif Widodo")

func greets(person: String, from hometown: String = "Yogi Arif Widodo") -> String {
   return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greets(person: "Gilang", from: "Bandung")) // Specifying Argument Labels

// MARK: Variadic Parameters

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(arithmeticMean(1,2,3,4,5))
print("------------------------------------------------")
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 5
var anotherInt = 905

swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// someInt is now 905, and anotherInt is now 5

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts(_:_:)

print("Result : \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Hasil dari 2 * 3 adalah \(mathFunction(2,3))")

// MARK: Tipe Data dalam Function sebagai Tipe Data Parameter
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b:Int) {
    print("Result is \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)

// MARK: Tipe Data Function sebagai Tipe Data Balikan/Return Types
func setpForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : setpForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero sekarang akan merujuk untuk menggunakan function stepBackward()
// Ini dikarenakan 3 > 0 bernilai true.

print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("Zero ! \(currentValue)")

// MARK: nested func

func chooseStepFunc(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentVal = -4
let moveNearerToZeron = chooseStepFunc(backward: currentValue > 0)

while currentVal != 0 {
    print("\(currentVal)... ")
    currentVal = moveNearerToZeron(currentVal)
}

print("zero!")
