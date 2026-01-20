// 94. Binary Tree Inorder Traversal
// https://leetcode.com/problems/binary-tree-inorder-traversal/description/

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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var answer: [Int] = []
        var stack: [TreeNode] = []
        var currNode = root
        
        while currNode != nil || !stack.isEmpty {
            if currNode != nil {
                stack.append(currNode!)
                currNode = currNode?.left
            }
            else {
                let node = stack.removeLast()
                answer.append(node.val)
                currNode = node.right
            }
        }

        return answer        
    }
}
