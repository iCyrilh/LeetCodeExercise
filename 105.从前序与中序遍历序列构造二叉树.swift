/*
 * @lc app=leetcode.cn id=105 lang=swift
 *
 * [105] 从前序与中序遍历序列构造二叉树
 */

// @lc code=start
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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard let rootValue = preorder.first else { return nil }
        
        /// 1.从preoder获取根节点，如3
        let tree = TreeNode(rootValue)
        
        if let index = inorder.firstIndex(of: rootValue) {
            // 2.根据根节点（3）将inorder分为左右子树
            // 左子树：[9]
            let leftArr = Array(inorder[0..<max(0,index)])
            // 右子树[15，20，7]
            let rightArr = Array(inorder.suffix(from: min(index+1, inorder.count - 1)))
            let letfCount = leftArr.count
            let rightCount = rightArr.count
            if letfCount >= 1 && letfCount < preorder.count {
                // 3.递归左子树，preorder为[9]，inorder为[9]
                tree.left = buildTree(Array(preorder[1...letfCount]), leftArr)
            }
             
            if (1+letfCount) <= (letfCount+rightCount) && letfCount+rightCount < preorder.count {
                // 4.递归右子树，preorder为[20, 15, 7]，inorder为[15，20，7]
                tree.right = buildTree(Array(preorder[(1+letfCount)...(letfCount+rightCount)]), rightArr)
            }
        }
        return tree

    }
}
// @lc code=end

