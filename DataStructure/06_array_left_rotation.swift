// https://www.hackerrank.com/challenges/array-left-rotation/problem

func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    var arrCopy = arr 
    
    for _ in 0..<d {
        arrCopy.append(arrCopy.removeFirst())
    }
    
    return arrCopy
}
