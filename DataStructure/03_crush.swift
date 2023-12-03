// https://www.hackerrank.com/challenges/crush/problem
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var array: [Int] = Array(repeating: 0, count: n)
    
    for query in queries {
        for i in query[0]...query[1]{
            array[i - 1] += query[2]
        }
    }
    
    return array.max()!
}
