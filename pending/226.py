# 226. Invert Binary Tree
# https://leetcode.com/problems/invert-binary-tree/description/

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
        stack = [root] # root를 stack에 넣기
        while stack:
            node = stack.pop()
            if not node:
                continue
            node.left, node.right = node.right, node.left # 자식 swap
            stack += [node.left, node.right] # 그 다음에 swap 할 가능성이 있는 node를 stack에 넣기
        return root
