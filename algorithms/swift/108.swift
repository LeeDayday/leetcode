// 108. Convert Sorted Array to Binary Search Tree
// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        func convert(_ s: Int, _ e: Int) -> TreeNode? {
            if s > e {
                return nil
            }
            var mid: Int = (s + e) / 2
            var node = TreeNode(nums[mid])

            node.left = convert(s, mid - 1)
            node.right = convert(mid + 1, e)

            return node
        }
        return convert(0, nums.count - 1)
    }
}
