/*
 * @lc app=leetcode.cn id=860 lang=swift
 *
 * [860] 柠檬水找零
 */

// @lc code=start
class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var five = 0
        var ten = 0
        for bill in bills {
            if bill == 5 {
                five += 1
                continue
            } else if bill == 10 {
                if five >= 1 {
                    five -= 1
                    ten += 1
                    continue
                } else {
                    return false
                }
            } else if bill == 20 {
                if five >= 1 && ten >= 1 {
                    five -= 1
                    ten -= 1
                    continue
                } else if five >= 3 {
                    five -= 3
                    continue
                } else {
                    return false
                }
            }
        }
        return true

    }
}
// @lc code=end

