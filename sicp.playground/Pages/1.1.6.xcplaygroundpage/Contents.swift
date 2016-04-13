//: [Previous](@previous)

/*:
 # 1.1.6 Conditional Expressions and Predicates
 
 We can't express much in a programming language without *case analysis*, the ability to perform different operations based on the result of a test. Fortunately, Swift gives us language constructs for case analysis.
 */

    let abs = { (x: Int) -> Int in
        if lessThan(x, 0) {
            return -x
        } else if greaterThan(x, 0) {
            return x
        } else {
            return 0
        }
    }

/*:
 The general form of an if-statement is:
 
     if <predicate1> {
        <execute1>
     } else if <predicate2> {
        <execute2>
     }
     .
     .
     .
      else if <predicateN> {
        <executeN>
     } else {
        <executeElse>
     }
 
 Starting with <predicate1>, the predicates are evaluated until one of the predicates evalutes to `true`. A predicate is simply something that can evaluate to true or false, whether that something is a procedure that returns true or false or an expression that evaluates to true or false. Once this happens, the corresponding stament is executed.
 
 * callout(TODO): Introduce distinction between statements and expressions.
 
 
 There are also some logical composition operators that allow us to construct compound predicates. Here they are:
 
 */

    and(true, false)

    and(true, true, true)

    or(true, false)

    or(false, false, true)

    not(true)

/*:
 
 For `and`, the playground evalutes each expression passed in as an operand. If one of the expressions is false, then `and` returns false. If all of the expressions are true, then `and` returns true.
 
 `or` evalutes to true if *any* of if operands evalute to true. It evalutes to false otherwise.
 
 Notice that `and` and `or` are special forms, not procedures because the operands are not necessarily all evaluated.
 
 * callout(Fudge): This isn't exactly correct. The primitive `&&` and `||` operators are in fact special forms. However, I am not using those operators to avoid a discussion of infix notation. For our purposes, we're going to just pretend that `and` and `or` are special forms.
 
 ## Exercises
 
 ### 1.1
 Look at the sequence of expressions listed below. What will the playground print in response to these expressions?
 
 Uncomment the expressions to see if you're right.
 
 */

//10
//add(5, 3, 4)
//minus(9, 1)
//divide(6, 2)
//add(mult(2, 4), minus(4, 6))
//let a = 3
//let b = add(a,1)
//add(a, b, mult(a,b))
//equals(a, b)
//if and(greaterThan(b,a), lessThan(b, mult(a, b))) {
//    b
//} else {
//    a
//}

/*:
 ### 1.3
 
 Define a procedure that takes three numbers as arguments and returns the sum of the squares of the the two larger numbers. Answers to any exercise can be found on [the answers page](Answers).
 */

let sumOfSquaresOfLargestTwo = {(a: Int, b: Int, c: Int) -> Int in
    return 0
}

expect(sumOfSquaresOfLargestTwo(1,2,3), toEqual: 13)
expect(sumOfSquaresOfLargestTwo(2,3,4), toEqual: 25)

/*:
 
 * callout(TODO): Once we've introduced the distinction between statements and expressions and ternary expressions, we can write out exercise 1.4
 
 * callout(TODO): We cannot define a function that calls itself using `let`, so we need to introduce function declarations before we can write out exercise 1.5
 */


//: [Next](@next)
