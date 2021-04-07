/*
 * @lc app=leetcode.cn id=641 lang=swift
 *
 * [641] 设计循环双端队列
 */

// @lc code=start

class MyCircularDeque {
    var circularDeque: [Int] = []
    var capacity: Int = 0
    var font: Int = 0
    var rear: Int = 0
    
    /** Initialize your data structure here. Set the size of the deque to be k. */
    init(_ k: Int) {
        capacity = k + 1
        circularDeque = Array(repeating: 0, count: capacity)
    }
    
    /** Adds an item at the front of Deque. Return true if the operation is successful. */
    func insertFront(_ value: Int) -> Bool {
        if isFull() {
            return false
        }
        
        font = (font - 1 + capacity) % capacity
        circularDeque[font] = value
        return true
    }
    
    /** Adds an item at the rear of Deque. Return true if the operation is successful. */
    func insertLast(_ value: Int) -> Bool {
        if isFull() {
            return false
        }
        
        circularDeque[rear] = value
        rear = (rear + 1) % capacity
        return true
    }
    
    /** Deletes an item from the front of Deque. Return true if the operation is successful. */
    func deleteFront() -> Bool {
        if isEmpty() {
            return false
        }
        
        font = (font + 1) % capacity
        return true
    }
    
    /** Deletes an item from the rear of Deque. Return true if the operation is successful. */
    func deleteLast() -> Bool {
        if isEmpty() {
            return false
        }
        
        rear = (rear - 1 + capacity) % capacity
        return true
    }
    
    /** Get the front item from the deque. */
    func getFront() -> Int {
        if isEmpty() {
            return -1
        }
        
        return circularDeque[font]
    }
    
    /** Get the last item from the deque. */
    func getRear() -> Int {
        if isEmpty() {
            return -1
        }
        
        return circularDeque[(rear - 1 + capacity) % capacity]
    }
    
    /** Checks whether the circular deque is empty or not. */
    func isEmpty() -> Bool {
        return font == rear
    }
    
    /** Checks whether the circular deque is full or not. */
    func isFull() -> Bool {
        if font == (rear + 1) % capacity {
            return true
        }
        return false
    }
}

/**
 * Your MyCircularDeque object will be instantiated and called as such:
 * let obj = MyCircularDeque(k)
 * let ret_1: Bool = obj.insertFront(value)
 * let ret_2: Bool = obj.insertLast(value)
 * let ret_3: Bool = obj.deleteFront()
 * let ret_4: Bool = obj.deleteLast()
 * let ret_5: Int = obj.getFront()
 * let ret_6: Int = obj.getRear()
 * let ret_7: Bool = obj.isEmpty()
 * let ret_8: Bool = obj.isFull()
 */
// @lc code=end

