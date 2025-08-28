class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var n = 1

        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] {
                continue
            }
            nums[n] = nums[i]
            n += 1
        }

        return n
    }
}