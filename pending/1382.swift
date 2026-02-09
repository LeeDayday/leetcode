// 1382. Balance a Binary Search Tree
// https://leetcode.com/problems/balance-a-binary-search-tree/submissions/1913524535/?envType=daily-question&envId=2026-02-09

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
    func balanceBST(_ root: TreeNode?) -> TreeNode? {
        var sortedNode: [Int] = []

        func inorder(_ node: TreeNode?) {
            guard let node = node else { return }
            inorder(node.left)
            sortedNode.append(node.val)
            inorder(node.right)
        }

        func buildBST(_ left: Int, _ right: Int) -> TreeNode? {
            if left > right {
                return nil
            }
            let mid: Int = (left + right) / 2
            return TreeNode(sortedNode[mid], buildBST(left, mid-1), buildBST(mid+1, right))
        }

        inorder(root)

        return buildBST(0, sortedNode.count - 1)   
    }
}
