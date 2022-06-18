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

var memberDicodingA: PersonA? // nil / opsional
memberDicodingA = PersonA(name: "Yogi Arif Widodo")
memberDicodingA!.number = PhoneNumber(number: 62810_8108_1081, owner: memberDicodingA!)

memberDicodingA = nil

// MARK: memory safety
var stepSize = 1
func increment(_ number: inout Int) {
   number += stepSize
}

// Buat salinan secara eksplisit.
var copyOfStepSize = stepSize
increment(&copyOfStepSize)

// Perbarui variabel yang asli.
stepSize = copyOfStepSize
// stepSize sekarang bernilai 2


func balance(_ x: inout Int, _ y: inout Int) {
   let sum = x + y
   x = sum / 2
   y = sum - x
}

var playerOneScore = 42
var playerTwoScore = 30

balance(&playerOneScore, &playerTwoScore)  // OK
//balance(&playerOneScore, &playerOneScore)
// Error: conflicting accesses to playerOneScore

// MARK: Conflicting Access to self in Methods
struct Player {
   var name: String
   var health: Int
   var energy: Int
   static let maxHealth = 10
   mutating func restoreHealth() {
       health = Player.maxHealth
   }
}
extension Player {
   mutating func shareHealth(with teammate: inout Player) {
       balance(&teammate.health, &health)
   }
}
var gilang = Player(name: "Gilang", health: 10, energy: 10)
var ramadhan = Player(name: "Ramadhan", health: 5, energy: 10)
gilang.shareHealth(with: &ramadhan)  // O
//gilang.shareHealth(with: &gilang)
// Error: conflicting accesses to gilang

// MARK: Conflicting Access to Properties
//var playerInformation = (health: 10, energy: 20)
//balance(&playerInformation.health, &playerInformation.energy)
// Error: conflicting access to properties of playerInformation

//var yourName = Player(name: "Nama kamu", health: 10, energy: 10)
//balance(&yourName.health, &yourName.energy)  // Error

//func someFunction() {
//   var gilang = Player(name: "Gilang", health: 10, energy: 10) // local variable for overlapse is safety
//   balance(&gilang.health, &gilang.energy)  // OK
//}
//

