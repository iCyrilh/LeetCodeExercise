/*
 * @lc app=leetcode.cn id=189 lang=swift
 *
 * [189] 旋转数组
 */

// @lc code=start
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k <= 0 || nums.count <= 1 {
            return
        }
        let i = k % nums.count
        nums = nums.reversed()
        let one = Array(nums[0..<i].reversed())
        let two = Array(nums[i..<nums.count].reversed())
        nums = one+two
    }
}
// @lc code=end

