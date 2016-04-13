//: [Previous](@previous)

/*:
 # 1.1.5: The Substitions Model for Procedure Invocation
 
 We just showed how to define a new *compountd* procedure. How does a playground evaluate procedures that we've defined? That question isn't one that we can answer entirely accuratley right now. We can, however, provide a simplified model for thinking about the evaluation of procedure invocations that is still helpful in understanding procedure invoation. This model is called the "substition model."
 
 Here's a rule that describes the process of a procedure invocation:
 
 * To apply a procedure to its arguments, evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.
 
 For example, recall that the definition of sum of squares is the following:
 
     let sumOfSquares = { (x, y) in
        add(square(x), square(y))
     }
 
 Now, suppose we define a procedure, `f`, that uses `sumOfSquares`:
 
    let f = { (x) in
        sumOfSquares(add(x, 1), mult(x, 2))
    }
 
 To evaluate, `f(5)`, we first get the body of `f`:
 
    sumOfSquares(add(x, 5), mult(x,2))
 
 Next, we replace the formal parameter, x, with the argument passed into the invocation, 5:
 
    sumOfSquares(add(5, 5), mult(5,2))
 
 From here, we must evaluate `add(5,5)` and `mult(5,2)` which leads to:
 
    sumOfSquares(6, 10)
 
 To evaluate, `sumOfSquares(6, 10)`, we again get the body of `sumOfSquares`:
 
    add(square(x), square(y))
 
 Again, we replace the formal parameters (viz., x and y) by the arguments passed in to sumOfSquares(viz., 1 and 2):
 
    add(square(6), square(10))
 
 Square is a compount procedure, so we must fetch the body and replace the formal parameters with arguments one more time:
 
    add(mult(6,6), mult(10,10))
 
 `mult(6,6)` and `mult(10,10)` will evaluate to `36` and `100` respectively, which yields:
 
    add(36, 100)
 
 Finally, this yields `136`.
 
 ## Applicative vs Normal Order
 
 The rules for evaluation given in [section 1.1.3](1.1.3) specify a particular order of evaluation, namely, that the playground first evaluates the operator and the operands before invoking the named procedure on the arguments. This is called "applicative order evaluation."
 
 There is another ordering in which procedures can be evaluated called "normal order evaluation." According to this evaluation rule, arguments are not evaluated before they are substituted in for the formal parameters of a method body. Instead, arguments evaluated only after their substitution for formal parameters has resulted in an expression that only involved primitive operators. Here's what normal order evaluation would look like if it was applied to the `f(5)` example:
 
    f(5)
    
    add(square(add(1, 5)),square(mult(2, 5)))
 
    add(mult(add(1, 5), add(1,5)),mult(mult(2, 5), mult(2,5)))
 
 Notice that the above expression only consists of primitive procedues. Now that we've reached this point, we start to evaluate arguments:
 
    add(mult(6, 6), mult(10,10))
    
    add(36, 100)
    
    100
 
 For a certain set of invocations, applicative and normal order produce the same results. However, in an upcoming exercise, we'll start to see some exceptions to this.
 
*/
//: * callout(From): pgs. 25-26

//: [Next](@next)
