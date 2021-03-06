import UIKit

/* Lesson 4
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

var myTeam = [
    "Brooklyn": "99:89",
    "Dallas Mavericks": "109:99",
    "Washington Wizards": "107:122"
]



/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var coinsInWallet: [Int] = []

for c in 5...500 {
    coinsInWallet.insert(c, at: 0)
}
extension Sequence where Element: Numeric {
    func sum() -> Element { return reduce(0, +) }
}

print("Total sum of cash in my wallet is \(coinsInWallet.sum())")



/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

let numberToCheck = 100

func isEvenNumber (_ number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
var result = isEvenNumber(numberToCheck)
print("The statement 'number \(numberToCheck) is even' is \(result).")



/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

let startingNumber = 1
let endingNumber = 100

func createArray (beginningOfArray start: Int, endingOfArray end: Int) -> Array<Int> {
    var arrayOfIntegers: [Int] = []
    var numberToAddToArray = start
    while true {
        numberToAddToArray < end
        arrayOfIntegers.append(numberToAddToArray)
        if numberToAddToArray == end {
            break
        } else {
            numberToAddToArray += 1
        }
    }
        return arrayOfIntegers
}
var newArray = createArray(beginningOfArray: startingNumber, endingOfArray: endingNumber)
print("The numbers is the new array are ", newArray)



/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

var countOfElements = newArray.count

for even in 0...countOfElements {
    if isEvenNumber(elementInArray) == true {
        newArray.remove(at: even)
    }
}

print("The uneven numbers are ", newArray)
