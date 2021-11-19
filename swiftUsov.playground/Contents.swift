import UIKit

var greeting = "Hello, playground"

// Tuples
let myProgramStatus = (200, "In work", true)
let myProgramStatus1: (Int, String, Bool) = (200, "In work", true)

print(type(of: myProgramStatus))

// Записываем значения кортежа в переменные
let (statusCode, statusText, statusConnect) = myProgramStatus
print(statusCode)
print(statusText)
print(statusConnect)

// получаем только необходимое значение кортежа
let (statusCode1, _, _) = myProgramStatus
print("Код ответа: \(statusCode1)")

// пример определения имен элементов кортежа через литерал
let statusTuple = (statusCode: 200, statusText: "In work", statusConnect: true)
print(statusTuple)


// Sequence and Collection
var intVar = 12
intVar.bitWidth

// Range
let myRange = 1..<500  // базовая форма оператора
let rangeString = "a"..<"z"
type(of: rangeString)
let oneSideRange = ..<500  // префиксная форма оператора
type(of: oneSideRange)// PartialRangeUpTo.Type

let myClosedRange = 1...10
type(of: myClosedRange)

// Array
var mutableArray = [2, 4, 8]
mutableArray[1] = 16
mutableArray

let alphabetArray = ["a", "b", "c"]
alphabetArray[0]

let newAlphabetArray = Array(arrayLiteral: "a", "b", "c")
let lineArray = Array(0...9)
let repeatArray = Array(repeating: "Swift", count: 5)

var stringsArray = ["one", "two", "three", "four"]
stringsArray[1...2] = ["five"]
stringsArray

// задаем тип массива явно
let arrayOne: Array<Character> = ["a", "b", "c"]
let arrayTwo: [Int] = [1, 2, 5, 8, 11]

// Array is value type
// Массив является значимым типом (), а не ссылочным (reference type).
// Это означает, что при передаче значения массива из одного параметра в другой создается его копия,
// редактирование которой не влияет на исходную коллекцию.
let parentArray = ["one", "two", "three"]
var copyParentArray = parentArray
copyParentArray
copyParentArray[1] = "four"

(parentArray, copyParentArray)

// Empty Array
let emptyArray: [String] = []       // []
let anotherEmptyArray = [String]()  // []

// Creating an Array by Adding Two Arrays Together
var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 4)
var sixDoubles = threeDoubles + anotherThreeDoubles
sixDoubles

// Set
var dishes: Set<String> = ["хлеб", "овощи", "тушонка", "вода"]
var dishesTwo: Set = ["хлеб", "овощи", "тушонка", "вода"]
var members = Set<String>(arrayLiteral: "Энакин", "Оби Ван", "Йода")
var membersTwo = Set(arrayLiteral: "Энакин", "Оби Ван", "Йода")

// Empty Set
let emptySet = Set<String>()
var setWithValues: Set<String> = ["хлеб", "овощи"]
setWithValues = []
setWithValues


var a = 50, b = 4
if a > 20, b < 5 {   // , = AND(&&)
    print("Hi")
}

// Switch-case
let dragonCharacteristics: (color: String, weight: Float) = ("red", 3.4)
print("Dragon: ", dragonCharacteristics)
switch dragonCharacteristics {
case ("green", 0..<2):
    print("aviary №1")
case ("red", 0..<2):
    print("aviary №2")
case ("green", 2...), ("red", 2...):    // , = OR(||)
    print("aviary №3")
default:
    print("Дракон не может быть принят в стаю")
}

// Switch-case and where
//let dragonCharacteristics: (color: String, weight: Float) = ("red", 3.4)
var dragonsCount = 3
switch dragonCharacteristics {
case ("green", 0..<2):
    print("aviary №1")
case ("red", 0..<2):
    print("aviary №2")
case ("green", 2...) where dragonsCount < 5,
      ("red", 2...) where dragonsCount < 5:
    print("aviary №3")
default:
    print("Дракон не может быть принят в стаю")
}

// Switch-case and where  // связываем значения // bound
switch dragonCharacteristics {
case ("green", 0..<2):
    print("aviary №1")
case ("red", 0..<2):
    print("aviary №2")
case ("green", let weight) where weight > 2 && dragonsCount < 5,
      ("red", let weight) where weight > 2 && dragonsCount < 5:
    print("aviary №3")
default:
    print("Дракон не может быть принят в стаю")
}

// Switch-case and fallthrought - Позволяет перейти к телу последующего case-блока
let level: Character = "Б"
// определение уровня готовности
switch level {
case "А":
    print("Выключить все електрические приборы")
    fallthrough
case "Б":
    print("Закрыть входные двери и окна")
    fallthrough
case "В":
    print("Соблюдать спокойствие")
default:
    break
}

// While Loops
var i = 1
var resultSum = 0
// цикл для подсчета суммы
while i <= 10 {
    resultSum += i
    i += 1
}
resultSum  // 55

// Repeat-while   // код тела оператора выполнится не менее одного раза
var y = 1
var result = 0
repeat {
    result += y
    y += 1
} while y <= 10
result  // 55

// For-in loops
let numArray: Array<Int> = [1,2,3,4,5]
var resultForIn: Int = 0
for number in numArray {
    resultForIn += number
}
resultForIn  // 15

// For-in loop with numeric ranges
for number in 1...5 {
    print(number)
}

// For-in loop with numeric ranges and underscore
for _ in 1...3 {
    print("Repeating line")
}

// For-in with Dictionary
var countriesAndBlocks = ["Россия": "СНГ", "Франция": "ЕС"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) вступила в \(orgName)")
}

// keys
countriesAndBlocks = ["Россия": "ЕАЭС", "Франция": "ЕС"]
for countryName in countriesAndBlocks.keys {
    print("страна - \(countryName)")
}
// values
for orgName in countriesAndBlocks.values {
    print("организация - \(orgName)")
}

// For-in with Arrays and enumerated
var myMusicStyles = ["Rock", "Jazz", "Pop"]
for (index, musicName) in myMusicStyles.enumerated() {
    print("\(index + 1). Я люблю \(musicName)")
}

// For-in with stride
// функция stride(from:through:by) возвращает последовательность числовых
// элементов, начиная с from до through с шагом by
var resultStride = 0
for i in stride(from: 1, through: 1000, by: 2) {
    resultStride += i
}
resultStride // 250000
// функция stride(from:to:by) имеет лишь одно отличие - вместо входного параметра
//through используется to, который исключает указанное в нем значение из последовательности
for i in stride(from: 1, through: 10, by: 3) {
    print(i)
}  // 1, 4, 7, 10
for i in stride(from: 1, to: 10, by: 3) {
    print(i)
}  // 1, 4, 7

// For-in with where
var resultForInWhere = 0
for i in 1...10 where i % 2 == 0 {
    resultForInWhere += i
}
resultForInWhere // 30

var isRun = true
for i in 1...10 where isRun {
    print(i)
}

// For-in with Dictionary
let resultsOfGame = ["Red Wings": ["2:1", "2:3"], "Capitals": ["3:6", "5:5"], "Penguins": ["3:2", "1:2"]]
for (teamName, results) in resultsOfGame{
    for oneResult in results {
        print("игра с \(teamName) - \(oneResult)")
    }
}


