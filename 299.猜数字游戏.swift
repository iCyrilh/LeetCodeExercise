/*
 * @lc app=leetcode.cn id=299 lang=swift
 *
 * [299] 猜数字游戏
 */

// @lc code=start
class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var A = 0, B = 0
        var array = Array(repeating: 0, count: 10)
        
        for (s, g) in zip(secret, guess) {
            if s == g {
                A += 1
            } else {
                if array[Int(s.asciiValue!) - 48] < 0 {
                    B += 1
                }
                
                if array[Int(g.asciiValue!) - 48] > 0 {
                    B += 1
                }
                
                array[Int(s.asciiValue!) - 48] += 1
                array[Int(g.asciiValue!) - 48] -= 1
            }
        }
        return "\(A)A\(B)B"

    }
}
// @lc code=end

