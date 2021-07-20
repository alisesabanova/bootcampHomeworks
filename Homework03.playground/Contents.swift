import UIKit

/*Lesson 3
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let deposit: Double = 500000
let rate: Double = 0.019
var increase = deposit * rate
for years in 1...5 {
    let accountStatus = increase * Double(years) + deposit
    print("Amount of income after \(years) years will be", increase * Double(years) ,"Eur. My total deposit will be \(accountStatus) Eur!")
}



/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let intArray = [1, 16, 3, 4, 5, 6, 7, 8, 9, 10]
var evenArray: [Int] = []
for evenNumber in intArray {
    if evenNumber % 2 == 0 {
        evenArray.insert(evenNumber, at: 0)
    }
}
print("My even numbers are: \(evenArray)")



/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

for counter in 1...10 {
    let shuffle = Int.random(in: 1..<10)
    if shuffle == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}



/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night bug slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let dayClimbingSpeed = 2
let nightSliding = -1
let postHeight = 10
var climbersCurrentHeight = 0
var daysClimbing = 0

while true {
    climbersCurrentHeight < postHeight
    climbersCurrentHeight = climbersCurrentHeight + dayClimbingSpeed
    daysClimbing += 1
    if climbersCurrentHeight == postHeight {
        break
    } else {
        climbersCurrentHeight = climbersCurrentHeight + nightSliding
    }
}

print("Bug will spend \(daysClimbing) days to reach the top of the post")
