
import Foundation
//We will define an n-interesting polygon. Your task isto find the area of a polygon for a given n.
func shapeArea(n: Int) -> Int {
    
    switch n {
    case 0:
        return 0
    case 1:
        return 1
    default:
        return (n*n) + (n-1)*(n-1)
    }
    
}
