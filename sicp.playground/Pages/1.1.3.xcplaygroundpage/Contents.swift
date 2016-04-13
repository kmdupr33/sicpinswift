//: [Previous](@previous)

/*:
 # Evaluating Procedural Applications
 
 This chapter is partially about the issues that arise when we start to think procedurally. We can start to get at these issues by considering the fact that a playground evaluates a procedural application by following a procedure:
 
 To evaluate a procedural application, do the following:
 
 1. Evaluate the operands of the procedural application
 1. Apply the procedure that is the value of the operator to the values obtained from step one.
 
 Now, recall that we've already shown that the operands of a procedural application can themselves be procedural applications. So, the above procedure for evaluating procedural applications is *recursive*. In other words, one of the steps of above procedure, invokes the procedure of which that step is a part.
 
 Importantly, the stating the above procedure recursively gives us a more succinct way of stating how to evaluate procedural applicaitons than if we banned recursive defintions. Imagine how difficult it would be to describe how to evaluate the following procedural application without recursion:
 
 */

    mult(add(2, mult(4, 6)), add(3, 5, 7))

//: [Next](@next)
