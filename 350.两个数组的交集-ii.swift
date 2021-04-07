/*
 * @lc app=leetcode.cn id=350 lang=swift
 *
 * [350] 两个数组的交集 II
 */

// @lc code=start
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var arr: [Int] = []
        var hashDict: [Int : Int] = [:]
        for num in nums1 {
            let count = hashDict[num] ?? 0
            hashDict[num] = count + 1
        }
        
        for num in nums2 {
            guard let count = hashDict[num] else { continue }
            if count > 0 {
                arr.append(num)
                hashDict[num] = count - 1
            }
        }
        
        return arr
    }
}
// @lc code=end

