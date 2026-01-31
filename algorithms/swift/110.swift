// 110. Balanced Binary Tree
// https://leetcode.com/problems/balanced-binary-tree/

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
    // left Tree 와 right Tree의 높이를 계속 비교
    func isBalanced(_ root: TreeNode?) -> Bool {
        func dfs(_ node: TreeNode?) -> (Bool, Int){
            guard let node = node else { return (true, 0) }
            
            let (leftBalanced, leftHeight) = dfs(node.left)
            let (rightBalanced, rightHeight) = dfs(node.right)
            let isBalanced = leftBalanced && rightBalanced && abs(leftHeight - rightHeight) <= 1

            return (isBalanced, 1 + max(leftHeight, rightHeight))
        }
        return dfs(root).0
    }
}
