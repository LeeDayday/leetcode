// 234. Palindrome Linked List
// https://leetcode.com/problems/palindrome-linked-list/description/

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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var left = head
        var right = head

        // 가운데 지점 찾기 (left가 가운데 노드를 가리킴)
        while right != nil && right?.next != nil {
            left = left?.next
            right = right?.next?.next
        }

        var prev: ListNode? = nil
        var curr = left

        // 뒤집기
        while curr != nil {
            let next_node = curr?.next
            curr?.next = prev
            prev = curr
            curr = next_node
        }

        // 비교하기
        left = head
        right = prev

        while right != nil {
            if left?.val != right?.val {
                return false
            }
            left = left?.next
            right = right?.next
        }
        return true
    }
}

