//: [Previous](@previous)

/*:
 # 1.1.1: Expressions
 
 We can't talk about primitive procedural expressions unless we talk about expressions in general. Let's briefly do that now.
 
 Expressions are *evaluated* by an interpretor. For example, the number below is an expression, and to the right of that expression, we see that the playground has evaluated that expression and displayed the result of that evalaution.
 */

    42

/*:
 Number expressions can be combined with procedures to produce an expression that is the result of applying the procedure to numbers.
 
 */

    add(1, 41)

/*:
 * note: Those who are familiar with swift may wonder why I don't use `1 + 41` instead of `add(1, 41)`. I'm doing this so that I can avoid having to talk about [infix notation](https://en.wikipedia.org/wiki/Infix_notation). Throughout this summary, I avoid any expressions that use infix notation.
 
 The `add` sign in the above string of characters is an "operand;" it operates on the operators, 1 and 41 that are enclosed between two parentheses. `add`, the operand, represents a *primitive* procedure. The `add` procedure adds `1` and `41` to produce the result you see on the right. Let's call a combination of operators and operands an "invocation." `1 + 41` above is an example of a *primitive* invocation.
 
 Invocations can be combined. That is, an invocation can itself be an operator of a invocation. For example:
 */

    add(1, add(1, 1))

//: * callout(From): pgs. 19



//: [Next](@next)
