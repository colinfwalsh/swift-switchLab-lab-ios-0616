/*: Outline
 
 
 # Switch Statements
 
 ### Readings associated with this lab
 
 * [Switch Statements](https://github.com/learn-co-curriculum/swift-switchStatement-readme)

 */
//: First let's try some of last lab's questions but using a 'switch' instead of 'if' or 'if/else'. Can you figure out the types of `x`, `y`, `a`, and `b` without option clicking the constants?

// Given....
let x = 5.0
let y = 12
let a = 321
let b = 32




/*: Question 1
### **(1)** Print "true" if a modulo b is equal to zero.
*/
switch a % b == 0{
case true:
        print("true")
    
default :
        print("false")
}







/*: Question 2
### **(2)** Print 'true' if y divided by x is greater than three, otherwise print 'false'.
*/
switch y/Int(x) > 3{
case true:
    print("true")
default:
    print("false")}





/*: Question 3
### **(3)** Print 'true' if y is greater than x and a divided by b is greater than 9. If there's any need to convert to either an `Int` or a `Double` to satisfy the requirements of a binary operator (you can choose whichever one you want to convert to to satisfy the requirements).
*/
switch y > Int(x) && a/b > 9 {
case true:
    print("true")
default:
    print("false")}







/*: Question 4
### **(4)** Write a function named `isGreater` that takes two `Int` arguments and returns a `String`. This function should look to see if `a` is greater than `b`. If it is, it returns back the `String` 'yep', else it returns back the `String` 'nope`.
*/


func isGreater(int1: Int, int2: Int) -> String {
    switch int1 > int2 {
    case true:
        return "Yep"
    default:
        return "Nope"
    }
}


print(isGreater(a, int2: b))



/*: Question 5
### **(5)** Write a function named "isForceWith" that takes a `String` argument which represents a persons name and returns a `Bool`. If the persons name is equal to the name of someone with the force, return `true`, else return `false`. People with the force are Luke, Leia, Anakin, Obi Wan, Yoda & Vader.
 ```swift
 isForceWith("Luke") // true
 
 isForceWith("Mary") // false
 ```
*/


func isForceWith(name: String) -> Bool {
    
    let forceUsers = ["Luke", "Leia", "Anakin", "Obi Wan", "Yoda", "Vader"]
    
    var count = 0
    
    for forceName in forceUsers {
        switch forceName == name {
        case true:
            count += 1
        default:
            continue
        }
    }
    
    switch count == 1 {
    case true:
        return true
    default:
        return false
    }
}

print(isForceWith("Leia"))








/*: Question 6
### **(6)** Write a function "isInRange" that takes an Int  argument and prints "small" if it's in the range of 0 and 3, "medium" if it's in the range of 4 and 6, "big" if it's in the range of 7 and 10, and otherwise prints "not sure".
 ```swift
 isInRange(0) // prints "small"
 isInRange(99) // prints "not sure"
 isInRange(5) // prints "big"
 ```
*/

func isInRange(int1: Int) {

    
    switch  int1 {
    case 0...3:
        print("small")
        
    case 4...6:
        print("medium")
        
    case 7...10:
        print("big")
        
    default:
        print("not sure")
    }

}





//: Checkout the solution branch for answers to the above questions.
