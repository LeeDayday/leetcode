// 101. Symmetric Tree
// https://leetcode.com/problems/symmetric-tree/description/

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        func compareNode(_ x: TreeNode?, _ y: TreeNode?) -> Bool {
            if x == nil && y == nil { return true } // 둘 다 nil 인 경우 true
            guard let x, let y else { return false } // 둘 중 하나가 nil 인 경우 false
            guard x.val == y.val else { return false } // 값이 다른 경우 false
            return compareNode(x.left, y.right) && compareNode(x.right, y.left)
        }
        return compareNode(root?.left, root?.right)
    }
}
