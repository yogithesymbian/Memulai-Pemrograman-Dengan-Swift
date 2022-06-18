//: [Previous](@previous)

import Foundation


class Person {
   let name: String

   init(name: String) {
       self.name = name
       print("\(name) is being initialized")
   }

   deinit {
       print("\(name) is being deinitialized")
   }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Dicoding indonesia")

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil

reference3 = nil
// Prints "Dicoding indonesia is being deinitialized"

class PersonX {
   let name: String
   init(name: String) { self.name = name }
   var apartment: Apartment?
   deinit { print("\(name) is being deinitialized") }
}
 
class Apartment {
   let unit: String
   init(unit: String) { self.unit = unit }
   weak var tenant: PersonX? // MARK: weak reference
   deinit { print("Apartment \(unit) is being deinitialized") }
}

// MARK: strong reference
var memberDicoding: PersonX?
var dicodingSpace: Apartment?

memberDicoding = PersonX(name: "Gilang Ramadhan")
dicodingSpace = Apartment(unit: "Dicoding Academy")

memberDicoding!.apartment = dicodingSpace
dicodingSpace!.tenant = memberDicoding

memberDicoding = nil
dicodingSpace = nil

// MARK: Unowned Reference
class PersonA {
   let name: String
   var number: PhoneNumber?
   init(name: String) {
       self.name = name
   }
   deinit { print("\(name) is being deinitialized") }
}
 
class PhoneNumber {
   let number: UInt64
   unowned let owner: PersonA
   init(number: UInt64, owner: PersonA) {
       self.number = number
       self.owner = owner
   }
   deinit { print("Phone number +\(number) is being deinitialized") }
}

var memberDicoding: PersonA? // nil / opsional
memberDicoding = PersonA(name: "Yogi Arif Widodo")
memberDicoding!.number = PhoneNumber(number: 62810_8108_1081, owner: memberDicoding!)

memberDicoding = nil
