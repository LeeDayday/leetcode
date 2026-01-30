// 111. Minimum Depth of Binary Tree
// https://leetcode.com/problems/minimum-depth-of-binary-tree/

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
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        var queue: [(TreeNode, Int)] = [(root, 1)] // (node, depth) queue
        
        while !queue.isEmpty {
            let (node, d) = queue.removeFirst()
            // leaf node에 먼저 도달하는 경우 종료
            if node.left == nil && node.right == nil {
                return d
            }
            if let left = node.left {
                queue.append((left, d + 1))
            }
            if let right = node.right {
                queue.append((right, d + 1))
            }
        }
        return 0
    }

}
