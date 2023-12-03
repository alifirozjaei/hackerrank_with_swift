// https://www.hackerrank.com/challenges/arrays-ds/problem

func reverseArray(a: [Int]) -> [Int] {
    var aCopy = a 
    
    for i in 0..<(aCopy.count / 2 ) {
        let temp: Int = aCopy[i]
        aCopy[i] = aCopy[aCopy.count - i - 1]
        aCopy[aCopy.count - i - 1] = temp
    }
    
    return aCopy
}
