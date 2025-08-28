class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m - 1
        var p2 = n - 1
        var p = m + n - 1  // nums1 last index

        // Merge in reverse order
        while p1 >= 0 && p2 >= 0 {
            if nums1[p1] > nums2[p2] {
                nums1[p] = nums1[p1]
                p1 -= 1
            } else {
                nums1[p] = nums2[p2]
                p2 -= 1
            }
            p -= 1
        }

        // Fill nums1 with leftover nums2 elements
        while p2 >= 0 {
            nums1[p] = nums2[p2]
            p2 -= 1
            p -= 1
        }
    }
}