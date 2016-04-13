//: [Previous](@previous)

/*:
 # 1.1.4: Compound Procedures
 
 Recall that the mechanisms of organization for any programming language are:
 
 * primitive expressions: the simplest things the language is concerned with
 * ways to build complex elements from simpler ones
 * ways to name and maniuplate complex elements as units
 
 We've seen primitive expressions (e.g., `42`). We've seen how to build complex invocations with nesting (e.g., `add(1 , add(1, 1))`. We've seen how to name values with `let`. Procedure defintions, however, give us another tool that let's us name *procedures*.
 
 Suppose, for example, we wanted to name a procedure that squared an Int, here's how we'd do it:
 */

    let square = { (x: Int) -> Int in
        mult(x, x)
    }

/*:
 In general, the syntax for defining a function is:
 
 let <name> = { (<formal parameters>) **->** <return type> in
    <body>
 }
 
 The return type of a procedure tells the compiler what sort of value to expect from the procedure. In the above case, by specifying `Int` as the return value, we're telling the compiler that it should expect and integer or whole number. Simalarly, by placing `:Int` after `x`, we are telling the compiler to expect `x` to be a whole number. This prevents `square` from being used in a way that we didn't intend. Strings, for example, are a valid type of expression, but we have not idea what it would mean to invoke `mult` on a string, so we prevent that from happening by telling the compiler to expect an `Int`. 
 
 Sometimes, the compiler an infer the parameter and return types from the context. When this is the case, we can drop the type specifiers in our parameters and return types. In fact, we can do precisely this with the above definition of square. We'll be taking advantage of this feature when we can.
 
 Now, that square has been defined, we can use it.
 */

    square(21)

    square(add(2, 5))

    square(square(2))

/*:
 Importantly, we can use square as a building block for defining another procedure, `sumOfSquares`:
 */

    let sumOfSquares = { (x, y) in
        add(square(x), square(y))
    }
//: * callout(From): pgs. 23-24

//: [Next](@next)
