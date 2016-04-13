import Foundation

public func square(x: Int) -> Int {
    return mult(x, x)
}

public func sumOfSquares(x: Int, _ y: Int) -> Int {
    return square(x) + square(y)
}