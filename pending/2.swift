// 2. Add Two Numbers
// https://leetcode.com/problems/add-two-numbers/

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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head = ListNode()
        var node = head

        var l1 = l1
        var l2 = l2
        var extra: Int = 0

        while (l1 != nil) || (l2 != nil) || (extra != 0) {
            let x: Int = l1?.val ?? 0
            let y: Int = l2?.val ?? 0
            l1 = l1?.next
            l2 = l2?.next

            let result: Int = x + y + extra
            extra = result / 10

            node.next = ListNode(result % 10)
            node = node.next!

        }
        return head.next
    }
}
