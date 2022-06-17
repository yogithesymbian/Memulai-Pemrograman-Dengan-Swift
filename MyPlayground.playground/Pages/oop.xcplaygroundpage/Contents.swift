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
