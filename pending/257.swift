// 257. Binary Tree Paths
// https://leetcode.com/problems/binary-tree-paths/

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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var result: [String] = []

        func dfs(_ node: TreeNode?, _ path: String) {
            guard let node = node else { return }

            let currentPath: String

            if path.isEmpty {
                currentPath = "\(node.val)"
            } else {
                currentPath = path + "->\(node.val)"
            }

            // leaf node
            if node.left == nil && node.right == nil {
                result.append(currentPath)
                return
            }

            dfs(node.left, currentPath)
            dfs(node.right, currentPath)
        }

        dfs(root, "")

        return result
    }
}
