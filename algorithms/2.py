# 2. Add Two Numbers
# https://leetcode.com/problems/add-two-numbers/description/

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        head = ListNode() # head: dummy node
        tail = head
        result = 0
        up = 0
        while l1 or l2 or up:
            result = up
            if l1:
                result += l1.val
                l1 = l1.next
            if l2:
                result += l2.val
                l2 = l2.next
            up = result // 10
            tail.next = ListNode(result % 10)
            tail = tail.next
        return head.next

                
        
