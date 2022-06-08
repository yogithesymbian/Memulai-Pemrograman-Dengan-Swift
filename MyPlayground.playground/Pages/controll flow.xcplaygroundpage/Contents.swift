//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// MARK: Perulangan For-In

// for-in untuk mencari tahu sebuah urutan, seperti item dalam dalam array,
let names = ["Gilang", "Ahmad", "Dimas", "Buchori"]
for name in names {
   print("Hello, \(name)!")
}

//  tuple (key, value),
let numberOfLegs = ["laba-laba": 8, "semut": 6, "kucing": 4, "ayam": 2]
for (animalName, legCount) in numberOfLegs {
   print("\(animalName) mempunyai \(legCount) kaki.")
}

for index in 1...5 {
   print("\(index) kali 5 sama dengan \(index * 5)")
}
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
   answer *= base
}
print("Hasil akhrinya adalah \(answer).")

//let minutes = 60
//for tickMark in 0..<minutes {
//   print("V")
//   // Menggambar tanda centang setiap menit (60 kali).
//}

let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("V \(tickMark)")
    // Menggambar tanda centang setiap 5 menit sekali (0, 5, 10, 15, ..., 45, 50, 55).
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print("V \(tickMark)")
    // Menggambar tanda centang setiap 3 jam sekali(3, 6, 9, 12)
}

// MARK: Perulangan While

let finalSquare = 25 // total kotak
var board = [Int](repeating: 0, count: finalSquare + 1)
print("Nilai board saat ini: \(board)")

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02 // Tangga
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08 // Ular

print("Nilai board saat ini: \(board)")

var square = 0 // Penampung kotak
var diceRoll = 0 // Penampung dadu

print("finalSquare \(finalSquare)")
while square < finalSquare {
   // Mengocok Dadu
   diceRoll += 1
   // Jika dadu sama dengan 7, maka otomatis akan berubah menjadi 1 kembali
   if diceRoll == 7 { diceRoll = 1 }
   // Menggeser karakter sesuai dengan dadu yang diperoleh
   square += diceRoll
   if square < board.count {
       // Jika masih berada dalam papan permainan,
       // maka pastikan apakah karater bertemu ular dan tangga, atau tidak.
       square += board[square]
   }
   print("square saat ini \(square)")
}

// Jika karakter sudah melewati papan permainan, maka perulangan while akan berhenti.
print("Game over!")

print("-------------------------    ")
let finalSquares = 25
var boards = [Int](repeating: 0, count: finalSquares + 1)
boards[03] = +08; boards[06] = +11; boards[09] = +09; boards[10] = +02
boards[14] = -10; boards[19] = -11; boards[22] = -02; boards[24] = -08
var squares = 0
var diceRolls = 0

repeat {
   // Berpindah ke atas atau ke bawah untuk ular atau tangga.
   squares += boards[squares]
   // Menambahkan nilai dadu
   diceRolls += 1
   if diceRolls == 7 { diceRolls = 1 }
   // Berpindah dengan dadu yang ada.
   squares += diceRolls
   print(squares)
} while squares < finalSquares

print("Game over!")

var temperatureInCelcius = 20
if temperatureInCelcius <= 25 {
   print("It's very cold. Consider wearing a scarf.")
}

if temperatureInCelcius <= 25 {
   print("It's very cold. Consider wearing a scarf.")
} else {
   print("It's not that cold. Wear a t-shirt.")
}

if temperatureInCelcius <= 25 {
   print("It's very cold. Consider wearing a scarf.")
} else if temperatureInCelcius >= 30 {
   print("It's really warm. Don't forget to wear sunscreen.")
} else {
   print("It's not that cold. Wear a t-shirt.")
}
temperatureInCelcius = 30
print(temperatureInCelcius)
if temperatureInCelcius <= 25 {
   print("It's very cold. Consider wearing a scarf.")
} else if temperatureInCelcius >= 40 {
   print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("nothing")
}

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter")
case "z":
    print("ini z")
default:
    print("some other character")
}
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
   print("The letter A")
default:
   print("Not the letter A")
}
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
   naturalCount = "no"
case 1..<5:
   naturalCount = "a few"
case 5..<12:
   naturalCount = "several"
case 12..<100:
   naturalCount = "dozens of"
case 100..<1000:
   naturalCount = "hundreds of"
default:
   naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

// MARK: With TUPPLE
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
   print("\(somePoint) is at the origin")
case (_, 0):
   print("\(somePoint) is on the x-axis")
case (0, _):
   print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
   print("\(somePoint) is inside the box")
default:
   print("\(somePoint) is outside of the box")
}

// MARK: Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
   print("on the x-axis with a x value of \(x)")
case (0, let y):
   print("on the y-axis with a y value of \(y)")
case let (x, y):
   print("somewhere else at (\(x), \(y))")
}

// MARK: Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
   print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
   print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
   print("(\(x), \(y)) is just some arbitrary point")
}

// MARK: Compound Cases
let someCharacters: Character = "e"
switch someCharacters {
case "a", "e", "i", "o", "u":
   print("\(someCharacters) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
   print("\(someCharacters) is a consonant")
default:
   print("\(someCharacters) is not a vowel or a consonant")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
   print("On an axis, \(distance) from the origin")
default:
   print("Not on an axis")
}

// MARK: Pernyataan Control Transfer
//continue
//break
//fallthrough
//return
//throw
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
   if charactersToRemove.contains(character) {
       continue
   }
   puzzleOutput.append(character)
}
print(puzzleOutput) // grtmndsthnklk

let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
   possibleIntegerValue = 1
case "2", "٢", "二", "๒":
   possibleIntegerValue = 2
case "3", "٣", "三", "๓":
   possibleIntegerValue = 3
case "4", "٤", "四", "๔":
   possibleIntegerValue = 4
default:
   break
}
if let integerValue = possibleIntegerValue {
   print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
   print("An integer value could not be found for \(numberSymbol).")
}

// MARK: Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description) // The number 5 is a prime number, and also an integer.

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location)")
}
greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cuppertino"])
//Anda dapat menggunakan pernyataan guard untuk meningkatkan keterbacaan atau readability kode daripada memeriksanya menggunakan pernyataan if.


