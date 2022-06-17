//: [Previous](@previous)

import Foundation

// MARK: Structure dan Class
struct SomeStructure {
    // structure definition goes here
}

class SomeClass {
    // class definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// MARK: instance Structure dan Class
let someResolution = Resolution()
let someVideoMode = VideoMode()


// Menggunakan dot syntax untuk mengakses property.
print("The width of someResolution is \(someResolution.width)")

// Seperti kasus sebelumnya, menggunakan dot syntax untuk mengakses property.
print("The width of someVideoMode is \(someVideoMode.resolution.width)")


// Menggunakan dot syntax untuk mengubah nilai property.
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

// MARK: Memberwise Initializers for Structure Types

let vga = Resolution(width: 640, height: 480)
print(vga)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide.")

print("hd is still \(hd.width) pixels wide")

// MARK: same on enumeration
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")

// MARK: Class merupakan Tipe Data Reference
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0


// Nilainya sama karena merujuk ke kelas yang sama.
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
print("The frameRate property of alsoTenEighty is now \(alsoTenEighty.frameRate)")


if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

// MARK: Stored Properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print("Jangkuan tersebut memiliki nilai \(rangeOfThreeItems).")

rangeOfThreeItems.firstValue = 6
print("Jangkuan tersebut sekarang memiliki nilai \(rangeOfThreeItems).")

// MARK: Stored Properties of Constant Structure Instances
//let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// jangkuan tersebut memiliki nilai integer 0, 1, dan 2
//rangeOfFourItems.firstValue = 6
// ini akan menimbulkan kesalahan, meskipun firstValue adalah properti variabel


// MARK: Lazy Stored Properties
//Lazy stored properties merupakan properti dengan nilai awalnya yang tidak dihitung sampai pertama kali digunakan. Anda dapat menunjukkan lazy stored properties dengan menulis lazy modifier sebelum deklarasi.
class DataImporter {
    /*
     DataImporter adalah class untuk mengimpor data dari berkas eksternal.
     Class ini diasumsikan akan mengambil jumlah waktu yang tidak dapat ditentukan untuk diinisialisasi.
     */
    var filename = "data.txt"
    // class DataImporter akan menyediakan fungsionalitas pengimporan data di sini.
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // class DataManager akan menyediakan fungsionalitas manajemen data di sini
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// instance DataImporter untuk properti importer belum dibuat
print(manager.importer.filename)
// instance DataImporter untuk properti importer kini telah dibuat
// Menyetak "data.txt"

// MARK: Computed Properties
struct Point {
    var x = 0.0, y = 0.0
}

struct Shape {
    var origin = Point()
    var center: Point {
        get {
            return Point(x: origin.x / 2 , y: origin.y / 2)
        }
        set(newCenter) {
            origin.x = newCenter.x / 2
            origin.y = newCenter.y / 2
        }
    }
}

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("The volume of fourByFiveByTwo is \(fourByFiveByTwo.volume).")


// MARK: Property Observers
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newSteps) {
            print("About to set totalSteps to \(newSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 50

stepCounter.totalSteps = 150

stepCounter.totalSteps = 420

// MARK: Type Properties
struct SomeHmStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeHmClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

print(SomeHmStructure.storedTypeProperty)

SomeHmStructure.storedTypeProperty = "Another value."
print(SomeHmStructure.storedTypeProperty)

print(SomeEnumeration.computedTypeProperty)

print(SomeHmClass.computedTypeProperty)

// MARK: Method
class Counter {
    var count = 0
    func increment() {
        // count += 1
        self.count += 1
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(amount: 5)
counter.reset()

struct PointNew {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = PointNew(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("This point is to the right of the line where x == 1.0")
}

// MARK: Modifying Value Types
struct PointTx {
    var x = 0.0, y = 0.0
    // MARK: mutation modification properties | enable
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        //        x += deltaX
        //        y += deltaY
        //        atau bisa juga dengan MARK: Assigning to self Within a Mutating Method
        self = PointTx(x: x+deltaX, y: y + deltaY)
    }
}

var somePointXx = PointTx(x: 1.0, y: 1.0)
somePointXx.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePointXx.x), \(somePointXx.y))")

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var ovenLight = TriStateSwitch.low
ovenLight.next()
print("ovenLight sama dengan to \(ovenLight)")
ovenLight.next()
print("ovenLight sama dengan to \(ovenLight)")

class OtherClass {
    static func someTypeMethod() {
        // type method bisa anda implementasikan di sini
    }
}

OtherClass.someTypeMethod()

// MARK: Subscript

//subscript(index: Int) -> Int {
//    get {
//        // Kembalikan nilai subskrip yang sesuai di sini.
//        return 0
//    }
//    set(newValue) {
//        // Lakukan tindakan pengaturan yang cocok di sini.
//    }
//}

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// six times three is 18

var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2

print("Menampilkan numberOfLegs \(numberOfLegs)")

// MARK: Subscript Option
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[( row * column ) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

print(matrix)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)

// MARK: Inheritance
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}
class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle \(bicycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

// MARK: Initialization
struct Fahrenheit {
    var temperature: Double
    init(){
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)")

struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
print("boilingPointOfWater.temperatureInCelsius bernilai \(boilingPointOfWater.temperatureInCelsius)")

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print("freezingPointOfWater.temperatureInCelsius bernilai \(freezingPointOfWater.temperatureInCelsius)")

// MARK: ----------------
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)

class SizeInit {
    var width: Double, height: Double
    required init(w: Double, h: Double) {
        width = w
        height = h
    }
    //  Anda tidak perlu menulis modifier override ketika mengganti required initializer yang dituju:
}

let twoByTwoInit = SizeInit(w: 2.0, h: 2.0)

// MARK: Deinitialization
var counterBase = 3; // for reference counting

class baseClass {
    init() {
        counterBase+=1
    }
    deinit {
        counterBase-=1
    }
}

var base: baseClass? = baseClass()
print(counterBase)

base = nil // trigger deinit
print(counterBase)

// MARK: Protocol
//protocol SomeProtocol {
//   // definisikan protocol di sini
//    var mustBeSettable: Int { get set }
//    var doesNotNeedToBeSettable: Int { get }
//}
//protocol AnotherProtocol {
//   static var someTypeProperty: Int { get set }
//}
//struct SomeStructure: FirstProtocol, AnotherProtocol {
//   // definisikan structure di sini
//}
//
//class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
//   // definisikan class di sini
//}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let john = Person(fullName: "John Appleseed")

// MARK: More complex
class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
var yogi1701 = Starship(name: "Enterprise", prefix: "ID")
print("yogi1701.fullName adalah \"\(yogi1701.fullName)\"")

// MARK: Method Requirements
protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
print("And another one: \(generator.random())")

// MARK: Mutating Method Requirements
protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() { // diizinkan untuk mengubah instance dan properti apa pun dari instance tersebut.
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
print("lightSwitch is now equal to \(lightSwitch)")

protocol tcpprotocol {
    init(a: Int)
}

class mainClass {
    var a: Int // local storage
    
    init(a: Int) {
        self.a = a // initialization
    }
}

class subClass: mainClass, tcpprotocol {
    var b: Int
    
    init(a: Int, b : Int) {
        self.b = b
        super.init(a:a)
    }
    
    // Hanya membutuhkan satu parameter untuk convenient method.
    required override convenience init(a: Int) {
        self.init(a:a, b:0)
    }
}

let resultMainClass = mainClass(a: 30)
let resultSubClass = subClass(a: 50, b: 60)

print("result is: \(resultMainClass.a)")
print("result is: \(resultSubClass.a)")
print("result is: \(resultSubClass.b)")

// MARK: Extension
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")

struct SizeIn {
    var width = 0.0, height = 0.0
}

struct PointIn {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = PointIn()
    var size = SizeIn()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: PointIn(x: 2.0, y: 2.0), size: SizeIn(width: 5.0, height: 5.0))

extension Rect {
    init(center: PointIn, size: SizeIn) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: PointIn(x: originX, y: originY), size: size)
    }
}


let centerRect = Rect(center: PointIn(x: 4.0, y: 4.0), size: SizeIn(width: 3.0, height: 3.0))
print("centerRect\'s origin is (\(centerRect.origin)) and its size is (\(centerRect.size))")

// MARK: Method
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

4.repetitions {
    print("yogi")
}


// MARK: Mutating Instance Methods
extension Int {
    mutating func square() {
        self = self * self
    }
}

var someInt = 3
someInt.square()
print("someInt is now \(someInt)")

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

print(746381295[0])
print(746381295[1])
print(746381295[2])
print(746381295[8]) // auto return zero if index out of bound seolah2 dari kiri terisi 0

// MARK: Nested Types
// dua.swift
extension Int {
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}
func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print("0 ", terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
}

printIntegerKinds([3, 19, -27, 0, -6, 0, 7])

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// MARK: Generic function
func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someIntT = 83
var anotherIntT = 203
swapTwoValues(&someIntT, &anotherIntT)
print("someInt sekarang adalah \(someIntT), and anotherInt  sekarang adalah \(anotherIntT)")

var someString = "Dicoding"
var anotherString = "Indonesia"
swapTwoValues(&someString, &anotherString)
print("someString sekarang adalah \"\(someString)\", and anotherString sekarang adalah \"\(anotherString)\"")

// MARK: single
//struct IntStack {
//   var items = [Int]()
//
//   mutating func push(_ item: Int) {
//       items.append(item)
//   }
//
//   mutating func pop() -> Int {
//       return items.removeLast()
//   }
//}
// MARK: single as generic

protocol Container {
   associatedtype Item
   mutating func append(_ item: Item)
   var count: Int { get }
   subscript(i: Int) -> Item { get }
}

struct Stack<Element>: Container {
    var items = [Element]()
    
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    } // Extending a Generic Type
    mutating func push(_ item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> Element {
        return items[i]
    }
}
var dicodingAcademy = Stack<String>()
dicodingAcademy.push("Memulai Pemrograman dengan Kotlin")
print(dicodingAcademy.items)

dicodingAcademy.append("Menjadi Android Developer Expert ")
print(dicodingAcademy.items)

dicodingAcademy.push("Belajar Android untuk Pemula")
print(dicodingAcademy.items)

dicodingAcademy.push("Memulai Pemrograman Dengan Swift")
print(dicodingAcademy.items)

let fromTheTop = dicodingAcademy.pop()
// fromTheTop sama dengan "Memulai Pemrograman Dengan Swift", dan stack saat ini berisi 3 strings
if let topItem = dicodingAcademy.topItem {
    print("The top item on the stack is \(topItem).")
}
print(dicodingAcademy.count)
print(dicodingAcademy[1])
