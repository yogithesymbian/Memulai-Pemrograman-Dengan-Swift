//: [Previous](@previous)

import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
   case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west

directionToHead = .west

print(directionToHead)

directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

let somePLanet = Planet.earth
switch somePLanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

// MARK: Iterating over Enumeration Cases
enum Beverage: CaseIterable {
   case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count

print("\(numberOfChoices) beverages available")
for beverage in Beverage.allCases {
   print(beverage)
}

// MARK: Associated Value
enum Barcode {
   case upc(Int, Int, Int, Int)
   case qrCode(String)
}

var productBarcode = Barcode.upc(1, 24984, 13758, 9)
productBarcode = .qrCode("DICODING INDONESIA")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
   print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
   print("QR code: \(productCode).")
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
   print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
   print("QR code: \(productCode).")
}

// MARK: Raw Value
enum ASCIIControlCharacter: Character {
   case tab = "\t"
   case lineFeed = "\n"
   case carriageReturn = "\r"
}

enum PlanetValue: Int {
   case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPointValue: String {
   case north, south, east, west
}

let earthsOrder = PlanetValue.earth.rawValue
print("earthsOrder bernilai \(earthsOrder)")

let sunsetDirection = CompassPointValue.west.rawValue
print("sunsetDirection bernilai \(sunsetDirection)")

let possiblePlanet = PlanetValue(rawValue: 7)!
// possiblePlanet memiliki tipe data Planet? dan nilainya sama dengan Planet.uranus
print("PossiblePlanet : \(possiblePlanet)")

let positionToFind = 11
if let somePlanet = PlanetValue(rawValue: positionToFind) {
   switch somePlanet {
   case .earth:
       print("Mostly harmless")
   default:
       print("Not a safe place for humans")
   }
} else {
   print("There isn't a planet at position \(positionToFind)")
}

// MARK: Recursive Enumerations
enum ArithmeticExpression {
   case number(Int)
   indirect case addition(ArithmeticExpression, ArithmeticExpression)
   indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
   switch expression {
   case let .number(value):
       return value
   case let .addition(left, right):
       return evaluate(left) + evaluate(right)
   case let .multiplication(left, right):
       return evaluate(left) * evaluate(right)
   }
}
print(evaluate(product))
