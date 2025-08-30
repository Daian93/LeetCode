class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let arrayOfWords = s.split(separator: " ")
        return arrayOfWords.last?.count ?? 0
    }
}
