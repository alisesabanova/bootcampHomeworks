import UIKit

/*
 Exercise 1
 Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
 */

let firstString:String = "I'm learning"
let secondString:String = "swift"
print("\(firstString) \(secondString) !!!")



/*
 Exercise 2.1
 Create a constant named myAge and assign it the value of your age.
 */

let myAge = 99



/*
 Exercise 2.2
 Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
 */

let myAgeInTenYears:Int = myAge + 10



/*
 Exercise 2.3
 Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
 */

let daysInYear = 365.25



/*
 Exercise 2.4
 Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
 */

let daysPassed:Float = Float(myAgeInTenYears) * Float(daysInYear)



/*
 Exercise 2.5
 Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
 */

print("My age is \(myAge) years. In 10 years I will be \(myAgeInTenYears) years old. From the moment of my birth approximately \(daysPassed) days have passed. ")



/*
 Exercise 3.
 Calculate triangle's area and perimeter.
 Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
 */

let a = 8.0
let b = 6.0
let c = sqrt(pow(a,2) + pow(b,2))
let area = a * b * 0.5
let perimeter = a + b + c
print("If a right-angled triagle has lenghts of \(a) and \(b), then the triangle's area is \(area) and the perimeter is \(perimeter).")
