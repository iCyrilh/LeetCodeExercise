/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除有序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        
        var i = 0
        for (index, num) in nums.enumerated() where i != index && nums[i] != num {
            i += 1
            nums[i] = num
        }
        return i + 1
    }
}
// @lc code=end

