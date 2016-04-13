import Foundation


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

public func minus(x: Int, y: Int) -> Int {
    return x - y    
}

public func divide(x: Int, y: Int) -> Int {
    return x / y
}

public func equals(x: Int, y: Int) -> Bool {
    return x == y
}

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

public func square(x: Int) -> Int {
    return mult(x, x)
}