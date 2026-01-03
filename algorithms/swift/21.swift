// 21. Merged Two Sorted Lists
// https://leetcode.com/problems/merge-two-sorted-lists/description/
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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var answer = ListNode(0)
        var node = answer

        var l1 = list1
        var l2 = list2

        while let a = l1, let b = l2 {
            if a.val < b.val {
                node.next = a
                l1 = a.next
            }
            else {
                node.next = b
                l2 = b.next
            }
            node = node.next!
        }
        node.next = (l1 != nil) ? l1 : l2
    return answer.next
    }
}
