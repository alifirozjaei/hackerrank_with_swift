// https://www.hackerrank.com/challenges/2d-array/problem
func calculateHourglassSum(arr: [[Int]], startRow: Int = 0, startCol: Int = 0) -> Int {
    var sum: Int = 0
  
    for i in startRow...(startRow + 2){
        for j in startCol...(startCol + 2){
          sum += arr[i][j]
        }
    }
    sum -= (arr[startRow+1][startCol] + arr[startRow + 1][startCol + 2])
    
    return sum
}

func hourglassSum(arr: [[Int]]) -> Int {
    var maxHourglassSum: Int = calculateHourglassSum(arr: arr)
    
    for i in 0...3{
        for j in 0...3{
            let currnetHourglassSum: Int = calculateHourglassSum(arr: arr, startRow: i, startCol: j)
            if currnetHourglassSum > maxHourglassSum {
                maxHourglassSum = currnetHourglassSum
            }
        }
    }
    
    return maxHourglassSum
}
