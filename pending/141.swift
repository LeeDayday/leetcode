// 141. Linked List Cycle
// https://leetcode.com/problems/linked-list-cycle/description/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head = head else { return false }
        var left: ListNode? = head
        var right: ListNode? = head

        while right != nil && right?.next != nil {
            right = right?.next?.next
            left = left?.next
            if left === right { // 같은 node인지 검사
                return true
            }
        }
        return false
    }
}
