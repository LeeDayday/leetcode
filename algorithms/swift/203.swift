// 203. Remove Linked List Elements
// https://leetcode.com/problems/remove-linked-list-elements/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var dummy = ListNode(0, head)
        var prev: ListNode? = dummy
        var curr: ListNode? = head

        while curr != nil {
            if curr!.val == val {
                prev?.next = curr?.next
            }
            else {
                prev = curr
            }
            curr = curr?.next
        }
        return dummy.next
    }
}
