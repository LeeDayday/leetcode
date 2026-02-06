// 144. Binary Tree Preorder Traversal
// https://leetcode.com/problems/binary-tree-preorder-traversal/

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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var answer: [Int] = []

        func preorder(_ node: TreeNode?) {
            guard let node = node else { return }
            answer.append(node.val)
            preorder(node.left)
            preorder(node.right)
        }

        preorder(root)

        return answer
    }
}
