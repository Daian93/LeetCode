class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0

        for char in s.trimmingCharacters(in: .whitespaces){
            if char != " " {
                count += 1
            } else {
                count = 0
            }
        }
        return count
    }
}
