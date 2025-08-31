class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var stringArray = strs
        var result = ""

        // Sort the array
        stringArray.sort()

        // Get the first and last strings
        let first = Array(stringArray[0])
        let last = Array(stringArray[stringArray.count-1])

        // Start comparing
        for i in 0..<first.count {
            if first[i] != last[i] {
                break
            }
            result.append(first[i])
        }

        return result
    }
}