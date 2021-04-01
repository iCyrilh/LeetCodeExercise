/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 3 { return n }
        var dict = [1 : 1, 2 : 2, 3 : 3]
        return findWay(dict: &dict, n: n)
    }

    func findWay(dict: inout [Int : Int], n: Int) -> Int {
        if dict.keys.contains(n) { return dict[n] ?? 0 }
        let count = findWay(dict: &dict, n: n-1) + findWay(dict: &dict, n: n-2)
        dict[n] = count
        return count
    }
}
// @lc code=end

