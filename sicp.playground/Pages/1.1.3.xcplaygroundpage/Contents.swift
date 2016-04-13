//: [Previous](@previous)

/*:
 # 1.1.3: Evaluating Invocations
 
 This chapter is partially about the issues that arise when we start to think procedurally. We can start to get at these issues by considering the fact that a playground evaluates a invocation by following a procedure:
 
 To evaluate a invocation, do the following:
 
 1. Evaluate the operands of the invocation
 2. Apply the procedure that is the value of the operator to the values obtained from step one.
 
 For example:
 */

    add(1, add(1, 1))

/*:
 The above invocation is evaluated by first evaluating:
*/

    add(1, 1)

/*:
 Once `add(1,1)` is evaluated, its result will be placed as an operand to the the outermost `add()` invocation, which yields the following:
 */

    add(1, 2)

/*:
 
 Now that we've evaluated the operands of the procedural applicaiton, we can perform step (2) from above. Once this step is performed, we're left with result of adding 1 and 2, which is of course 3.
 
 Now, recall that we've already shown that the operands of a invocation can themselves be invocations. So, the above procedure for evaluating invocations is *recursive*. In other words, one of the steps of above procedure, invokes the procedure of which that step is a part.
 
 If we apply the above steps recursively, eventually, we'll get to the point where we need to evaluate some primitives. If we add some additional rules for how to evaluate primitives, we can take another step towards completing our procedure for evaluating programs:
 
 3. the values of numberals are the numbers that they name
 4. the values of built-in procedures are the machine instruction sequences that perform those procedures
 5. the values of other other names are the objects associated with those names in the enviornment.
 
 There's one more case we have to handle in our evaluation of programs: `let`. `let` is not a invocation. It does not operate anything. Rather, it associates a name with a value. Because `let` is an exception to the general evaluation rule, it is called a "special form."
 
 Importantly, stating the above procedure for evaluating invocations recursively gives us a more succinct way of stating how to evaluate invocations than if we banned recursive defintions. Imagine how difficult it would be to describe how to evaluate the following invocation without recursion:
 
 */

    mult(add(2, mult(4, 6)), add(3, 5, 7))

/*:
 The process generated by evaluating the above invocation can be visualized as a tree. Each invocation is a node in the tree and the branches of that node are the operator and operands of that invocation. As we continue, we'll see that recursion is a nice way of working with tree-like structures.
 
 ![Figure 1.1](figure1-1.png "Figure 1.1")
 
 */

//: * callout(From): pgs. 21-23

//: [Next](@next)
