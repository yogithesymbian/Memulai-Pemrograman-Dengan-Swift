//: [Previous](@previous)

import Foundation


let names = ["Gilang", "Alex", "Dimas", "Arif", "Ahmad"]
func backward(_ s1: String, _ s2: String) -> Bool {
    print("Hah kok bisa \(s1 > s2)")
    print("manakutau \(s1) - \(s2) = \(s1 > s2)")
    return s1 > s2
}

// closure
var revereseNames = names.sorted(by: backward)
print(revereseNames)

// inline closure
var revereseGood = names.sorted(by: {(s1: String, s2: String)-> Bool in
    return s1 > s2
})
print(revereseGood)

// Inferring Type From Context
var reverseOther = names.sorted(by: { s1, s2 in return s1 > s2})
print(reverseOther)

// Implicit Returns from Single-Expression Closures
var reverseImp = names.sorted(by: {s1, s2 in s1 > s2})
print(reverseImp)

// Shorthand Argument Names
var reverseShort = names.sorted(by: {$0 > $1})
print(reverseShort)

// operator method
var reverseOp = names.sorted(by: >)
print(reverseOp)

// trailing closure
var reveseTrail = names.sorted { $0 > $1 }
print(reveseTrail)

// MARK: Map with Trailing
let digitNames = [
   0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
   5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        print("number first : \(number)")
        print("index : \(number % 10)")
        output = digitNames[number % 10]! + output
        number /= 10
        print("output : \(output)")
        print("number second : \(number)")
    } while number > 0
    return output
}
print("strings bertipe data array string dan memiliki nilai \(strings).")

// MARK: Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runingTotal = 0
    func incrementer() -> Int {
        runingTotal += amount
        return runingTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

let incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven())

// Pemanggilan increment untuk byTen dan bySeven.
print(incrementByTen())
print(incrementBySeven())

// MARK: Closures Are Reference Types
let alsoIncrementByTen = incrementByTen
print(alsoIncrementByTen())
print(incrementByTen())

// MARK: Escaping Closure
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
   closure()
}

class SomeClass {
   var x = 10
   func doSomething() {
       someFunctionWithEscapingClosure { self.x = 100 }
       someFunctionWithNonescapingClosure { x = 200 }
   }
}

let instance = SomeClass()
// Referensi tanpa escaping closure
instance.doSomething()
print(instance.x)

// Referensi menggunakan escaping closure
completionHandlers.first?()
print(instance.x)

// MARK: Auto Closure
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)

print("Now serving \(customerProvider())!")

print(customersInLine.count)

func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: { customersInLine.remove(at: 0)} )

// MARK: Using @autoclosure
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: customersInLine.remove(at: 0))

var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
   customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")

for customerProvider in customerProviders {
   print("Now serving \(customerProvider())!")
}

print("Customer count \(customersInLine.count).")
