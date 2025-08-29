class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 2 else { return nums.count }

        var n = 2

        for i in 2..<nums.count {
            if nums[i] != nums[n - 2] {
                nums[n] = nums[i]
                n += 1
            }
        }

        return n
    }
}