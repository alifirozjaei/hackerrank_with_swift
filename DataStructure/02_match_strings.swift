// https://www.hackerrank.com/challenges/sparse-arrays/problem
func matchingStrings(stringList: [String], queries: [String]) -> [Int] {
    var results: [Int] = []
    
    for query in queries {
        var counter = 0 
        for str in stringList {
            if (query == str) {
                counter += 1
            }
        }
        results.append(counter)
    }

    return results
}
