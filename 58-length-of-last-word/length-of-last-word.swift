class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let sArray = Array(s)
        var count = 0
        for i in (0..<sArray.count).reversed() {
            if !(sArray[i] == " ") {
                count += 1
            } else if (sArray[i] == " ") && (count > 0) {
                break
            }
        }
        return count
    }
}