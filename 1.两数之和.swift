/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, num) in nums.enumerated() {
            let otherNum = target - num
            if nums.contains(otherNum),
               let otherIndex = nums.firstIndex(of: otherNum),
               otherIndex != index {
                return [index, otherIndex]
            }
        }
        return []
    }
}
// @lc code=end

