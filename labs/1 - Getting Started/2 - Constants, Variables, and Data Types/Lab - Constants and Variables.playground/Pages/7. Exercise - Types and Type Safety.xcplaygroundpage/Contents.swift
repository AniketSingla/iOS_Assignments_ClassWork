/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal: Double = 4.35
var secondDecimal: Float = 4.56675
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = 0;
//firstDecimal = trueOrFalse
print("It gives error as the type of the variables casts an issue")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var stringsVar = "Hello"
//firstDecimal = stringsVar
print("It again gives error as the type of variables is defferent as one is double whereas the other is string")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var intVar = 23
//var intVar = 23.0  // This won't give an error
//firstDecimal = intVar
print("It doesn't compile because it is an integer but if it were in the form of a double then there would be no error if for example iot was 23.0")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
