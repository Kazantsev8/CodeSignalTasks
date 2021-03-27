
import Foundation
//Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
func adjacetElementProduct(inputArray: [Int]) -> Int {
    var completedArray: [Int] = []
    print(inputArray.enumerated())
    for (index,value) in inputArray.enumerated() {
        print("\(index): \(value)")
        if index == 0 {
            completedArray.append(value * inputArray[index+1])
        } else if index == inputArray.endIndex-1 {
            completedArray.append(value * inputArray[index-1])
        } else {
            completedArray.append(value * inputArray[index-1])
            completedArray.append(value * inputArray[index+1])
        }
    }
    completedArray.sort(by: >)
    return completedArray[0]
}


adjacetElementProduct(inputArray: [3,6,-2,-5,7,3])
