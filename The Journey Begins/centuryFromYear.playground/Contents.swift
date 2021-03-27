
import Foundation

extension FloatingPoint {
    var isWholeNumber: Bool {
        return isZero ? true : isNormal ? self == rounded() : false
    }
}

func centuryFromYear(year: Int) -> Int {
    let century = Double(year)/100
    return century.isWholeNumber ? Int(round(century)) : Int(century) + 1
}

centuryFromYear(year: 1995)
centuryFromYear(year: 1500)
