//: [Previous](@previous)

/*:  
 # 1.1.2: Naming and the Environment
 
 As we said before, one of the mechanisms of organizing our programs is the ability to abstract elements of our program by naming them and operating on them as units. We can name create a name for a value by using the following code:
 */

    let size = 2

/*:
 The name identifies a variable whose value is 2. Now that `size` and `2` have been associated with each other, we can refer to the number two by the name `size`:
 */

    size

/*:
 The ability to use names to refer to values may not seem like a big deal until you try to write a program that's a little less trivial. Suppose we wanted to write a program that calculated the circumference of a circle whose radius was ten. Here's how we'd do it using let:
 */

    let pi = 3.14159
    let radius = 10.0
    let circumference = mult(2, pi, radius)

/*:
 Here's how we'd have to do it without using let:
 */

    mult(2, 3.14159, mult(10, 10))

/*:
 Using let allows us to express the intent of the program more clearly and it saves us from having to remember the details about the value of pie and the value of the radius of the circle. The importance of naming values becomes even more important as the programs we write become more complex.
 
 Once quick thing to note: there has to be something that's keeping track of the association between the name and the value. Let's call that thing the "environment."
 */

//: * callout(From): pgs. 21

//: [Next](@next)
