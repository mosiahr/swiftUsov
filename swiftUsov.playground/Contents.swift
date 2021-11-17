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

