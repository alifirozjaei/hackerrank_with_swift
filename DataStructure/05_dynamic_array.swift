// https://www.hackerrank.com/challenges/dynamic-array/problem

func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
    var answers: [Int] = []
    var lastAnswer: Int = 0
    var array: [[Int]] = Array(repeating: [], count: n)
    
    for query in queries {
        let q = query[0]
        let x = query[1]
        let y = query[2]
        
        if (q == 1){
            let idx = ((x^lastAnswer)%n);
            array[idx].append(y);
        } else if (q == 2){
            let idx = ((x^lastAnswer)%n); 
            lastAnswer = array[idx][y%array[idx].count]; 
            answers.append(lastAnswer);
        }
    }
    
    return answers
}
