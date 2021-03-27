
import Foundation

func checkPalindrome(inputString: String) -> Bool {
    
    guard inputString.count >= 2 else {
        return true
    }
    
    let end = inputString.index(inputString.endIndex, offsetBy: -1)
    
    if inputString[inputString.startIndex] == inputString[end] {
        let start = inputString.index(inputString.startIndex, offsetBy: 1)
        return checkPalindrome(inputString: String(inputString[start..<end]))
    } else {
        return false
    }
}

checkPalindrome(inputString: "hjkhjlk")
checkPalindrome(inputString: "aabaa")
checkPalindrome(inputString: "e")
