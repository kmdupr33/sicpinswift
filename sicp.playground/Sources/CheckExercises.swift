import Foundation

public func expect(x: Int, toEqual y: Int) -> String {
    if x == y {
        return "Expectation met."
    } else {
        return "Expected: \(y) Got: \(x)."
    }
}