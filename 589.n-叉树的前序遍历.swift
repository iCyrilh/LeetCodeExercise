/*
 * @lc app=leetcode.cn id=589 lang=swift
 *
 * [589] N 叉树的前序遍历
 */

// @lc code=start
/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        var preOrders = [Int]()
        
        guard let r = root else { return [] }
        
        preOrders.append(r.val)
        
        r.children.forEach({ preOrders += preorder($0) })
        
        return preOrders
    }
}
// @lc code=end

