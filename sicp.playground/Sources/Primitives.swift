import Foundation


public func add(x:Double...) -> Double {
    return x.reduce(0, combine: { (acc, x) -> Double in
        acc + x
    })
}

public func mult(x: Double...) -> Double {
    return x.reduce(1, combine: { (acc, x) -> Double in
        acc * x
    })
}