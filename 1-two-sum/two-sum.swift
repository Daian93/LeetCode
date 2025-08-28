class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else { return [] }

        // value: index
        var dict = [Int: Int]()

        for (index, num) in nums.enumerated() {
            let diff = target - num

            if let prevIndex = dict[diff] {
                return [prevIndex, index] 
            } else {
                dict[num] = index
            }
        }

        // fallback 
        return [-1, -1]
    }
}