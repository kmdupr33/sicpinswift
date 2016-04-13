import Foundation

// Add

public func add(x:Double...) -> Double {
    return x.reduce(0, combine: { (acc, x) -> Double in
        acc + x
    })
}

public func add(x:Int...) -> Int {
    return x.reduce(0, combine: { (acc, x) -> Int in
        acc + x
    })
}

// Minus

public func minus(x: Int, _ y: Int) -> Int {
    return x - y    
}

// Divide

public func divide(x: Int, _ y: Int) -> Int {
    return x / y
}

// Mult

public func mult(x: Double...) -> Double {
    return x.reduce(1, combine: { (acc, x) -> Double in
        acc * x
    })
}

public func mult(x: Int...) -> Int {
    return x.reduce(1, combine: { (acc, x) -> Int in
        acc * x
    })
}

// Predicates

public func equals(x: Int, _ y: Int) -> Bool {
    return x == y
}

public func lessThan(x: Int, _ y: Int) -> Bool {
    return x < y
}

public func greaterThan(x: Int, _ y: Int) -> Bool {
    return x > y
}

public func and(bools: Bool...) -> Bool {
    for bool in bools {
        if bool == false {
            return false
        }
    }
    return true
}

public func or(bools: Bool...) -> Bool {
    for bool in bools {
        if bool == true {
            return true
        }
    }
    return false
}

public func not(bool: Bool) -> Bool {
    return !bool
}