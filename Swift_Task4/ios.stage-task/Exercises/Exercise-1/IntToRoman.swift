import Foundation

public extension Int {
    
    var roman: String? {
        
        if (self > 3999 || self <= 0) {
            return nil
        }
        
        let values: [(intNumber: Int, romanNumber: String)] = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
        
        var result = ""
        var number = 0
        
        for entry in values {
            let count = (self - number) / entry.intNumber
            number += count * entry.intNumber
            result += String(repeating: entry.romanNumber, count: count)
        }
        
        return result
    }
}
