//: [Previous](@previous)

/*:
 # Answers
 
 ## Chapter 1
 
 ### Section 1.1.6
 
 #### Exercise 1.3
 */

let sumOfSquaresOfLargestTwo = { (x: Int, y: Int, z: Int) -> Int in
    if and(lessThan(x, y), lessThan(x, z)) {
        return sumOfSquares(y, z)
    } else if and(lessThan(y, z), lessThan(y, x)) {
        return sumOfSquares(z, x)
    } else {
        return sumOfSquares(x, y)
    }
}

expect(sumOfSquaresOfLargestTwo(1,2,3), toEqual: 13)
expect(sumOfSquaresOfLargestTwo(2,3,4), toEqual: 25)


//: [Next](@next)
