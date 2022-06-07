import Cocoa

var greeting = "Hello, playground"
var str =  "Hello, playground"
str = "hello dicoding"

let maximumOfLoginAttempts = 10 // let is similar const
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0 // single line defined
var red, green, blue: Double

var welcomeMessage: String
welcomeMessage = "Hello World"

let π = 3.14159
let 你好 = "你好世界"

//var friendlyWelcome = "Hello!"
//friendlyWelcome = "Bonjour!"
//print(friendlyWelcome)

// let languageName = "Swift"
// languageName = "Swift++"
print(1.0, 2.0, 3.0, 4.0, 5.0)

print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")

for n in 1...5 {
    print(n, terminator: "")
}

// MARK: String Interpolation
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
print("The current value of friendlyWelcome is \(friendlyWelcome)")

// MARK: Ini adalah contoh Single-Line Comments

/*
  Ini adalah
  contoh
  Multiple Comment
  */

/*
  Ini contoh blok pertama
  /* Ini contoh blok kedua */
  Ini masih di blok pertama
  */

let minValue = UInt8.min
print(minValue) // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max
print(maxValue) // maxValue is equal to 255, and is of type UInt8

let minValueInt8 = Int8.min
print("minValue sama dengan \(minValueInt8), dan bertipe Int8")
let maxValueInt8 = Int8.max
print("maxValue sama dengan \(maxValueInt8), dan bertipe Int8")

let minValueInt16 = Int16.min
print("minValue sama dengan \(minValueInt16), dan bertipe Int16")
let maxValueInt16 = Int16.max
print("maxValue sama dengan \(maxValueInt16), dan bertipe Int16")

let minValueInt32 = Int32.min
print("minValue sama dengan \(minValueInt32), dan bertipe Int32")
let maxValueInt32 = Int32.max
print("maxValue sama dengan \(maxValueInt32), dan bertipe Int32")

let minValueInt64 = Int64.min
print("minValue sama dengan \(minValueInt64), dan bertipe Int64")
let maxValueInt64 = Int64.max
print("maxValue sama dengan \(maxValueInt64), dan bertipe Int64")

let minValueUInt8 = UInt8.min
print("minValue sama dengan \(minValueUInt8), dan bertipe UInt8")
let maxValueUInt8 = UInt8.max
print("maxValue sama dengan \(maxValueUInt8), dan bertipe UInt8")


let minValueUInt16 = UInt16.min
print("minValue sama dengan \(minValueUInt16), dan bertipe UInt16")
let maxValueUInt16 = UInt16.max
print("maxValue sama dengan \(maxValueUInt16), dan bertipe UInt16")


let minValueUInt32 = UInt32.min
print("minValue sama dengan \(minValueUInt32), dan bertipe UInt32")
let maxValueUInt32 = UInt32.max
print("maxValue sama dengan \(maxValueUInt32), dan bertipe UInt32")

let minValueUInt64 = UInt64.min
print("minValue sama dengan \(minValueUInt64), dan bertipe UInt64")
let maxValueUInt64 = UInt64.max
print("maxValue sama dengan \(maxValueUInt64), dan bertipe UInt64")

let apple = 3.5
let banana: Double = 4.1
let manggo: Float = 2.4

let age = 42
// Konstanta dengan nama age akan disimpulkan dengan tipe data Integer.
let pi = 3.14159
// Konstanta dengan nama pi akan disimpulkan dengan tipe data Double.
let anotherPi = 3 + 0.14159
// Konstanta dengan nama anotherPi akan diprediksi dengan tipe data Double
let decimalInteger = 18
print("Nilai decimalInteger adalah \(decimalInteger)")

let binaryInteger = 0b10010
print("Nilai binaryInteger adalah \(binaryInteger)")

let octalInteger = 0o22
print("Nilai octalInteger adalah \(octalInteger)")

let hexadecimalInteger = 0x12
print("Nilai hexadecimalInteger adalah \(hexadecimalInteger)")

let decimalExponen = 1.25e2
print("1.25e2 berarti 1.25 x 10 pangkat 2 atau \(decimalExponen).")

let anotherDecimalExponen = 1.25e-2
print("1.25e-2 berarti 1.25 x 10 pangkat -2 atau \(anotherDecimalExponen).")

let hexadecimalExponen = 0xFp2
print("0xFp2 berarti 15 x 2 pangkat 2 atau \(hexadecimalExponen).")
let anotherHexadecimalExponen = 0xFp-2
print("0xFp-2 berarti 15 x 2 pangkat -2 atau \(anotherHexadecimalExponen).")

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456                // 123.456
let oneMillion = 1_000_000                   // 1000000
let justOverOneMillion = 1_000_000.000_000_1 // 1000000.0000001

// MARK: NUMERIC TYPE CONVERSION

//let cannotBeNegative: UInt8 = -1
// UInt8 tidak dapat menyimpan angka negatif, dan akan menyebabkan error.
//let tooBig: Int8 = Int8.max + 1
// Int8 tidak dapat menyimpan sebuah angka yang lebih besar dari nilai maksimumnya, dan akan menyebabkan error.

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
print(twoThousandAndOne)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let piYo = Double(three) + pointOneFourOneFiveNine
print("Nilai pi adalah \(piYo), dan ini di definisikan menjadi tipe Double.")

let threeHmm = 3
let pointOneFourOneFiveNineHmm = 0.14159
let piHmm = Double(threeHmm) + pointOneFourOneFiveNineHmm
let integerPi = Int(piHmm)
print("integerPi memiliki nilai \(integerPi) dan ia didefinisikan memiliki tipe Int.")

// MARK: Type Aliases
// typealias NewType = ExistingType
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max
print("maxAmplitudeFound mempunyai nilai \(maxAmplitudeFound)")

// Boolean
let orangesAreOrange = true
print("Nilai orangesAreOrange adalah \(orangesAreOrange)")

let turnipsAreDelicious = false
print("Nilai turnipsAreDelicious adalah \(turnipsAreDelicious)")

if turnipsAreDelicious {
    print("Mmm, lobaknya lezat!")
} else {
    print("Eww, lobak itu mengerikan.")
}


// MARK: TUPLE
//let http404Error = (404, "Not Found")
//print("http404Error memiliki tipe (Int, String) dan berisi \(http404Error).")

//let http404Error = (404, "Not Found")
//let (statusCode, statusMessage) = http404Error
//print("http404Error memiliki kode status \(statusCode)")
//print("http404Error memiliki pesan error \"\(statusMessage)\"")

//let http404Error = (404, "Not Found")
//let (justTheStatusCode, _) = http404Error
//print("http404Error memiliki kode status \(justTheStatusCode)")


let http404Error = (404, "Not Found")
print("http404Error memiliki kode status \(http404Error.0)")
print("http404Error memiliki pesan error \"\(http404Error.1)\"")

//let http200Status = (statusCode: 200, description: "OK")
let http200Status = (statusCode: 200, description: "OK")
print("http200Status memiliki kode status \(http200Status.statusCode)")
print("http200Status memiliki pesan error \"\(http200Status.description)\"")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber disimpulkan sebagai "Int?", atau "optional Int"

// MARK: NULL / NIL
var serverResponseCode: Int? = 404
// serverResponseCode sebenarnya sebuah Int yang mengandung nilai 404,
 
serverResponseCode = nil
// namun saat ini serverResponseCode tidak mengandung nilai sama sekali.

var surveyAnswer: String?
// secara otomatis surveyAnswer akan ditetapkan sebagai variabel nil
let convertedNumberHm: Int? = 123
if convertedNumberHm != nil {
   print("convertedNumber memiliki sebuah nilai integer.")
}


let convertedNumbers: Int? =  123
if convertedNumbers != nil {
   print("convertedNumber memiliki nilai \(convertedNumbers!)")
}
print("convertedNumber memiliki nilai \(convertedNumbers)")

// MARK: OPTIONAL BINDING
//if let constantName = someOptional {
//   statements
//}
let possibleNumberX = "123"
if let actualNumberX = Int(possibleNumberX) {
   print("String possibleNumber memiliki nilai string \"\(possibleNumberX)\" dan dapat dikonversi menjadi nilai integer \(actualNumberX).")
} else {
   print("String possibleNumber memiliki nilai string \"\(possibleNumberX)\" dan tidak bisa dikonversi menjadi integer.")
}

let possibleNumberS = "123"
if var actualNumberS = Int(possibleNumberS) {
   actualNumberS = 321
   print("String possibleNumber memiliki nilai string \"\(possibleNumberS)\" dan dapat dikonversi menjadi nilai integer. Setelah itu nilainya diubah menjadi \(actualNumberS).")
} else {
   print("String possibleNumber memiliki nilai string \"\(possibleNumberS)\" dan tidak bisa dikonversi menjadi integer.")
}

// ========

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
   print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
   if let secondNumber = Int("42") {
       if firstNumber < secondNumber && secondNumber < 100 {
           print("\(firstNumber) < \(secondNumber) < 100")
       }
   }
}

// MARK: ERROR HANDLING
func canThrowAnError() throws {
   // Function ini memicu kesalahan
}
do {
   try canThrowAnError()
   // Tidak terjadi kesalahan.
} catch {
   // Terjadi kesalahan
}

func makeASandwich() throws {
   // Buatan Sandwich memicu kesalahan
}
 
//do {
//   try makeASandwich() // Ketika prosesnya berjalan lancar, maka akan masuk ke bagian selanjutnya.
//    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
//    washDishes() // Jika error yang ditangkap adalah outOfCleanDishes, maka bagian ini akan terpanggil.
//} catch SandwichError.missingIngredients(let ingredients) {
//    buyGroceries(ingredients) // Jika error yang ditangkap adalah missingIngredients, maka bagian ini akan terpanggil.
//}
let addition = 7 + 2
print("7 + 2 = \(addition)")

let subtraction = 10 - 4
print("10 - 4  = \(subtraction)")

let multiplication = 3 * 4
print("3 * 4  = \(multiplication)")

let division = 12 / 2
print("12 / 2 = \(division)")

let remainder = 10 % 4
print("10 % 4 = \(remainder)")

//let a = 10
//a = (b x some multiplier) + remainder

//a = (b x some multiplier) + remainder
//10 = (4 x 2) + 2
-10 % 4   // hasilnya -2
//a = (b x some multiplier) + remainder
//-10 = (4 x -2) + -2
//MARK: Operator Perbandingan

let equalTo = 1 == 1
print("\(equalTo) karena 1 sama dengan 1")

let notEqualTo = 2 != 1
print("\(notEqualTo) karena 2 tidak sama dengan 1")

let greaterThan = 2 > 1
print("\(greaterThan) karena 2 lebih besar dari 1")

let lessThan = 1 < 2
print("\(lessThan) karena 1 lebih kecil dari 2")

let greaterThanOrEqualTo = 1 >= 1
print("\(greaterThanOrEqualTo) karena 1 lebih besar sama dengan 1")

let lessThanOrEqualTo = 1 <= 2
print("\(lessThanOrEqualTo) karena 1 lebih kecil sama dengan 2")

let name = "World"
if name == "World" {
   print("Hello, \(name)")
} else {
   print("I'm sorry \(name), but I don't recognize you")
}


let animalVsFruit = (1, "zebra") < (2, "apple")
print("Hasil animalVsFruit adalah \(animalVsFruit) karena 1 lebih kecil dari pada 2. Sehingga persamaan item tuple ke dua, yakni \"z\" tidak sama dengan \"a\", diabaikan.")

let fruitVsAnimal = (3, "apple") < (3, "bird")
print("Hasil fruitVsAnimal adalah \(fruitVsAnimal) karena \"a\" kurang dari \"b\". Untuk persamaan 3 sama dengan 3 diabaikan karena nilainya sama.")

let animalVsAnimal = (4, "dog") == (4, "dog")
print("Hasil animalVsAnimal adalah \(animalVsAnimal) karena ke dua persamaan bernilai sama.")

//("blue", -1) < ("purple", 1)        // OK, mengevaluasi ke true
//("blue", false) < ("purple", true)  // Error karena < tidak dapat membandingkan nilai Boolean
let allowedEntry = false
if !allowedEntry {
   print("ACCESS DENIED")
}

//let enteredDoorCode = true
//let passedRetinaScan = false
//if enteredDoorCode && passedRetinaScan {
//   print("Welcome!")
//} else {
//   print("ACCESS DENIED")
//}
//
//let hasDoorKey = false
//let knowsOverridePassword = true
//if hasDoorKey || knowsOverridePassword {
//   print("Welcome!")
//} else {
//   print("ACCESS DENIED")
//}

let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
   print("Welcome!")
} else {
   print("ACCESS DENIED")
}

// MARK: Explicit Parentheses
//enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword
//(((enteredDoorCode && passedRetinaScan) || hasDoorKey) || knowsOverridePassword)

// MARK: Operator
let shiftBits: UInt8 = 0b00000100
print("Bit awal \(String(shiftBits, radix: 2)) bernilai \(shiftBits)")

let shift1 = shiftBits << 1
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 1 kali, bernilai \(shift1) atau \(String(shift1, radix: 2))")

let shift2 = shiftBits << 2
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 2 kali, bernilai \(shift2) atau \(String(shift2, radix: 2))")

let shift3 = shiftBits << 4
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 4 kali, bernilai \(shift3) atau \(String(shift3, radix: 2))")

let shift4 = shiftBits << 5
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kiri 5 kali, bernilai \(shift4) atau \(String(shift4, radix: 2))")

let shift5 = shiftBits >> 2
print("Operasi \(String(shiftBits, radix: 2)) bergerser ke kanan 1 kali, bernilai \(shift5) atau \(String(shift5, radix: 2))")

let pink: UInt32 = 0xCC6699

let redComponent = (pink & 0xFF0000) >> 16
print("redComponent bernilai \(String(redComponent, radix: 16)) atau \(redComponent).")

let greenComponent = (pink & 0x00FF00) >> 8
print("greenComponent bernilai \(String(greenComponent, radix: 16)) atau \(greenComponent).")


let blueComponent = pink & 0x0000FF
print("blueComponent bernilai \(String(blueComponent, radix: 16)) atau \(blueComponent).")
let b = 10
var a = 5
a = b // MARK: Assignment operator
print("Saat ini a memiliki nilai \(a), seperti nilai b yakni \(b)")

let (xx, yy) = (1, 2)
print("xx sama dengan \(xx), dan yy sama dengan \(yy)")
//if xx = yy {
//   // kode ini tidak valid, karena x = y tidak mengembalikan sebuah nilai.
//}
for index in 1...5 {
   print("\(index) times 5 is \(index * 5)")
}

// MARK: Half-Open Range Operator
let names = ["Dimas", "Gilang", "Widy", "Ahmad"]
let count = names.count
print("Berikut Tim Academy:")
for i in 0..<count {
   print("\(i + 1). \(names[i]) ")
}
// MARK: One-Side Range Operator
let namesZ = ["Dimas", "Gilang", "Widy", "Ahmad"]
for name in namesZ[2...] {
   print(name)
}
print("----------------------------------------")
for name in namesZ[...2] {
   print(name)
}
print("----------------------------------------")
for name in names[..<2] {
   print(name)
}
let range = ...5
print("range memiliki nilai 7 (\(range.contains(7)))")
print("range memiliki nilai 4 (\(range.contains(4)))")
print("range memiliki nilai -1 (\(range.contains(-1)))")


// MARK: Operator Minus Unary
let threeS = 3
let minusThree = -threeS
print("minusThree memiliki nilai \(minusThree)")
let plusThree = -minusThree   //
print("plusThree memiliki nilai \(plusThree), atau \"minus minus three\"")
// Ketika sebuah bilangan minus dikali dengan minus, maka hasilnya adalah positif.
// MARK: Operator Plus Unary
let minusSix = -6
let alsoMinusSix = +minusSix
print("alsoMinusSix memiliki nilai \(alsoMinusSix)")

// MARK: Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print("rowHeight sama dengan \(rowHeight)")

// MARK: Operator Nil-Coalescing

//let defaultColorName = "red"
//var userDefinedColorName: String?   // defaultnya nil
//var colorNameToUse = userDefinedColorName ?? defaultColorName
//print ("colorNameToUse memiliki nilai dari defaultColorName yakni \"\(colorNameToUse)\" karena userDefinedColorName bernilai nil.")

let defaultColorName = "red"
var userDefinedColorName: String?   // defaultnya nil
userDefinedColorName = "green"
var colorNameToUse = userDefinedColorName ?? defaultColorName
print("Karena userDefinedColorName tidak nil, colorNameToUse akan ditetapkan dengan nilai \"\(colorNameToUse)\".")

// MARK: String Literal
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
print(wiseWords)
let dollarSign = "\u{24}"
print("\(dollarSign), Unicode scalar U+0024")
let blackHeart = "\u{2665}"
print("\(blackHeart), Unicode scalar U+2665")
let sparklingHeart = "\u{1F496}"
print("\(sparklingHeart), Unicode scalar U+1F496")


//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""
//
//print(threeDoubleQuotationMarks)
var emptyString = ""
emptyString = "Dicoding Indonesia"
print(emptyString)


// MARK: STRING INTERPOLATION
let multiplier = 4
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)

// MARK: STRING CONCATENATION
let string1 = "Hello"
let string2 = " World!"
var welcome = string1 + string2
print(welcome)

// MARK: STRING MUTABILITY
var variableString = "Horse"
variableString += " and carriage."
print("Nilai variableString saat ini \"\(variableString)\"")

let quotation = "Aku belajar di Dicoding Academy"
let sameQuotation = "Aku belajar di Dicoding Academy"
if quotation == sameQuotation {
    print("Nilainya sama, yakni \"Aku belajar di Dicoding Academy\".")
}

// MARK: STRING FUNCTION

//let dicoding = "Dicoding Indonesia!"
//print(dicoding[dicoding.startIndex])
//print(dicoding[dicoding.index(before: dicoding.endIndex)])
//print(dicoding[dicoding.index(after: dicoding.startIndex)])
//print(dicoding[dicoding.index(dicoding.startIndex, offsetBy: 7)])


//var dicoding = "Dicoding Indonesia"
//
//dicoding.insert("!", at: dicoding.endIndex)
//print(dicoding)
//// dicoding sekarang sama dengan "Dicoding Indonesia!".
//
//dicoding.insert(contentsOf: " Mantab", at: dicoding.index(before: dicoding.endIndex))
//print(dicoding)
//// dicoding sekarang sama dengan "Dicoding Indonesia Mantab!".

var dicoding = "Dicoding Indonesia"

dicoding.insert("!", at: dicoding.endIndex)
print(dicoding)
// dicoding sekarang sama dengan "Dicoding Indonesia!".

dicoding.insert(contentsOf: " Mantab", at: dicoding.index(before: dicoding.endIndex))
print(dicoding)
// dicoding sekarang sama dengan "Dicoding Indonesia Mantab!".

dicoding.remove(at: dicoding.index(before: dicoding.endIndex))
print(dicoding)
// dicoding sekarang sama dengan "Dicoding Indonesia Mantab".
 
let rangea = dicoding.index(dicoding.endIndex, offsetBy: -6)..<dicoding.endIndex
dicoding.removeSubrange(rangea)
print(dicoding)
// dicoding sekarang sama dengan "Dicoding Indonesia".

var dicodingx = "Dicoding Indonesia"
let exclamationMark: Character = "!"
dicodingx.append(exclamationMark)
print("dicoding sekarang memiliki nilai \"\(dicodingx)\".")

let dicodingp = "Dicoding Indonesia"
print("dicoding mempunyai \(dicodingp.count) karakter.")

print("\u{61}")
print("\u{1F425}")

let eAcute: Character = "\u{E9}" // é
print("eAcute nilainya adalah \(eAcute)")

let combinedEAcute: Character = "\u{65}\u{301}" // e followed by
print("combinedEAcute berasal dari \u{65} dan  \u{301} sehingga nilainya menjadi \(combinedEAcute)")

let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"  // ᄒ, ᅡ, ᆫ
print("precomposed sama dengan \(precomposed), decomposed sama dengan \(decomposed)")

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
print("enclosedEAcute is \(enclosedEAcute)")


// MARK: ARRAY

var someInts = [Int]()
print("someInts count \(someInts.count)")

someInts.append(3)
someInts.append(3)
someInts.append(3)
print(someInts)

//var threeDoubles = Array(repeating: 0.1, count: 3)
//print("threeDoubles memiliki tipe data [Double], dan sama dengan \(threeDoubles).")

var threeDoubles = Array(repeating: 0.1, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print("anotherThreeDoubles bertipe [Double], dan sama dengan \(anotherThreeDoubles)")

var sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles akan disimpulkan bertipe [Double], dan sama dengan \(sixDoubles)")

var shoppingList: [String] = ["Eggs", "Milk"]
print("shoppingList diinisialisasi dengan dua item, \(shoppingList)")

var shoppingListShort = ["Eggs", "Milk"]
print("shoppingList diinisialisasi dengan lebih singkat, \(shoppingListShort)")

if shoppingList.isEmpty {
   print("The shopping list is empty.")
} else {
   print("The shopping list is not empty.")
}

shoppingList.append("Flour")
print("Saat ini shoppingList berisi \(shoppingList.count) item, dan seseorang akan membuat pancake")

shoppingList += ["Baking Powder"]
print("Sekarang shoppingList berisi \(shoppingList.count) item")

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print("Sekarang shoppingList berisi \(shoppingList.count) item")

var firstItem = shoppingList[0]
print("firstItem sama dengan \(firstItem)")

shoppingList[0] = "Six eggs"
print("Saat ini item pertama dari list shoppingList sama dengan \"\(shoppingList[0])\" bukan \"Eggs\".")


var shoppingListYo = ["Eggs", "Milk", "Flour", "Baking Powder", "Chocolate Spread", "Cheese", "Butter"]
shoppingListYo[0] = "Six eggs"
shoppingListYo[shoppingListYo.count - 1] = "Salt"

var shoppingListAr = ["Six eggs", "Milk", "Flour", "Baking Powder", "Chocolate Spread", "Cheese", "Butter"]
shoppingListAr[4...6] = ["Bananas", "Apples"]
print("shoppingList sekarang memiliki \(shoppingListAr) items.")


shoppingList.insert("Maple Syrup", at: 0)
print("Saat ini array shoppingList berisi \(shoppingList.count) items. \"Maple Syrup\" akan menjadi item pertama dalam array.")

let mapleSyrup = shoppingList.remove(at: 0)
print("Sekarang shoppingList berisi \(shoppingList) item, dan tidak ada \(mapleSyrup).")

let apples = shoppingList.removeLast()
print("Sekarang shoppingList berisi \(shoppingList) items, dan tidak ada \(apples) di dalamnya.")


var shoppingListWi = ["Six eggs", "Milk", "Flour", "Baking Powder", "Bananas"]
for (index, item) in shoppingListWi.enumerated() {
   print("item \(index + 1) : \(item)")
}

// MARK: SET
var letters = Set<Character>()
print("letters bertipe data Set memiliki \(letters.count) items.")

var lettersYo = Set<Character>()
lettersYo.insert("a")
print("Sekarang letters berisi \(lettersYo.count) nilai dengan tipe data Character.")
lettersYo = []
print("Sekarang letters menjadi set kosong, tetapi tipe datanya masih Set<Character>.")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print("favoriteGenres dinisialisasi dengan \(favoriteGenres.count) item String.")

var favoriteGenresShort: Set = ["Rock", "Classical", "Hip hop"]
print("favoriteGenres dinisialisasi dengan \(favoriteGenresShort.count) item String.")

favoriteGenres.insert("Jazz")
print("Sekarang favoriteGenres mempunyai \(favoriteGenres.count) items.")

if let removedGenre = favoriteGenres.remove("Rock") {
   print("\(removedGenre)? I'm over it.")
} else {
   print("I never much cared for that.")
}

if favoriteGenres.contains("Jazz") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

for genre in favoriteGenres {
   print("\(genre)")
}

for genre in favoriteGenres.sorted() {
   print("\(genre)")
}

// MARK: Performing Set Operations

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print("oddDigits.union(evenDigits) : \(oddDigits.union(evenDigits).sorted())")

print("oddDigits.intersection(evenDigits) : \(oddDigits.intersection(evenDigits).sorted())")

print("oddDigits.subtracting(singleDigitPrimeNumbers) : \(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())")

print("oddDigits.symmetricDifference(singleDigitPrimeNumbers) : \(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())")


// MARK: Set Membership and Equality
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "goat", "dog", "cat"]
let cityAnimals: Set = ["bird", "mouse"]

print("houseAnimals.isSubset(of: farmAnimals) : \(houseAnimals.isSubset(of: farmAnimals))")

print("farmAnimals.isSuperset(of: houseAnimals) : \(farmAnimals.isSuperset(of: houseAnimals))")

print("farmAnimals.isDisjoint(with: cityAnimals) : \(farmAnimals.isDisjoint(with: cityAnimals))")


// MARK: DICTIONARY

var namesOfIntegers = [Int: String]()
print("namesOfIntegers adalah dictionary kosong [Int: String]")

var namesOfIntegersX = [Int: String]()

namesOfIntegersX[16] = "sixteen"
print("Sekarang namesOfIntegers berisi \(namesOfIntegersX.count) pasangan key-value.")

namesOfIntegersX = [:]
print("namesOfIntegers menjadi dictionary kosong kembali dengan tipe data [Int: String].")


var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("Dictionary airports berisi \(airports.count) item.")

if airports.isEmpty {
    print("Dictionary airports kosong.")
} else {
    print("Dictionary airports memiliki nilai.")
}

airports["LHR"] = "London"
print("Sekarang dictionary airports berisi \(airports.count) items.")

airports["LHR"] = "London Heathrow"

if let londonAirport = airports["LHR"] {
    print("Nilai dari \"LHR\" akan berubah menjadi \"\(londonAirport)\".")
}

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
     print("Nilai lama DUB adalah \(oldValue).")
}

if let airportName = airports["DUB"] {
   print("Bandara baru sekarang adalah \(airportName).")
} else {
   print("Bandara tersebut tidak ada dalam dictionary airports.")
}

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("Menghapus bandara dengan nama \(removedValue).")
} else {
    print("Dictionary airports tidak memiliki nilai untuk kata kunci DUB")
}

for(airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

// MARK: Convert Dictionary to Array
let airportCodes = [String](airports.keys)
print("airportCodes bernilai \(airportCodes)")
let airpotNames = [String](airports.values)
print("airportNames bernilai \(airpotNames)")
