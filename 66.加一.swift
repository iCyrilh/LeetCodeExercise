/*
 * @lc app=leetcode.cn id=66 lang=swift
 *
 * [66] 加一
 */

// @lc code=start
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var shouldAddOne = false
        var newDigits = [Int]()
        for (index, digit) in digits.reversed().enumerated() {
            var num = digit
            if index == 0 || shouldAddOne {
                num += 1
                shouldAddOne = false
                if num > 9 {
                    num = 0
                    shouldAddOne = true
                }
            }
            newDigits.insert(num, at: index)
        }
        if shouldAddOne {
            newDigits.append(1)
        }
        
        return newDigits.reversed()
    }
}
// @lc code=end

