// 88. Merge Sorted Array
// https://leetcode.com/problems/merge-sorted-array/description/

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i: Int = m - 1 // nums1 순회 index
        var j: Int = n - 1 // nums2 순회 index
        var k: Int = m + n - 1 // nums1의 여유공간 index
        
        while j >= 0 {
            if i >= 0 && nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            }
            else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
        
    }
}
