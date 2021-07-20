import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var floatOne:Float = 3.14
var floatTwo:Float = 42.32
var floatSum:Double = Double(floatOne + floatTwo)
print("The result is \(floatSum)")



/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne:Int = 49
var numberTwo:Int = 8
let numberResult:Int = numberOne / numberTwo
let numberResultRemainder:Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(numberResult), the remainder is \(numberResultRemainder).")



/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var macBookPrice = 1000
var countOfMacBooks:Int = 99
if countOfMacBooks <= 5 {
    macBookPrice = 1000
} else if countOfMacBooks <= 10 {
    macBookPrice = 900
} else {
    macBookPrice = 850
}
var totalSum = countOfMacBooks * macBookPrice
print("New: \(countOfMacBooks) MacBook Pro with the price of: \(macBookPrice) EUR, will cost you: \(totalSum) Eur")



/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge:String = "33a"
var userAge:Int? = Int(userInputAge)
if userAge == nil {
    print("String \(userInputAge) can't be converted to Int.")
} else {
    print("String \(userInputAge) has Int value of \(userAge)")
}



/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

let calendar = Calendar.current
let currentDate = Date()
let myBirthDateString = "15.05.2019"
let myBirthDate = formatter.date(from: myBirthDateString) ?? Date()

let totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to: currentDate).year
let totalMonthsFromBirth = calendar.dateComponents([.month], from: myBirthDate, to: currentDate).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDate, to: currentDate).day

if totalYearsFromBirth == 0 || totalMonthsFromBirth == 0 || totalDaysFromBirth == 0 {
    print("Unable to check total years, months is \(totalYearsFromBirth ?? 0)")
}else{
    print("Total years: \(totalYearsFromBirth!), total months: \(totalMonthsFromBirth!), total days: \(totalDaysFromBirth!)")
}



/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let monthOfBirth = calendar.component(.month, from: myBirthDate)

var countQuarter = ""
switch monthOfBirth {
case 1...3:
    countQuarter = "first"
case 4...6:
    countQuarter = "second"
case 7...9:
    countQuarter = "third"
default:
    countQuarter = "forth"
}
print("I was born in the \(countQuarter) quarter.")
