class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        var k = k % n

        func reverse(_ left: Int, _ right: Int) {
            var l = left
            var r = right
            while l < r {
                nums.swapAt(l, r)
                l += 1
                r -= 1
            }
        }

        // Reverse the whole array
        reverse(0, n - 1)
        // Reverse the first k elements
        reverse(0, k - 1)
        // Reverse the rest of the elements
        reverse(k, n - 1)
    }
}