/*
 * @lc app=leetcode.cn id=21 lang=swift
 *
 * [21] 合并两个有序链表
 */

// @lc code=start
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let list1 = l1 else { return l2 }
        guard let list2 = l2 else { return l1 }

        if list1.val >= list2.val {
            list2.next = mergeTwoLists(list1, list2.next)
            return list2
        } else {
            list1.next = mergeTwoLists(list1.next, list2)
            return list1
        }
    }
}
// @lc code=end

