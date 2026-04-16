// 232. Implement Queue using Stacks
// https://leetcode.com/problems/implement-queue-using-stacks/description/


class MyQueue {
    private var input: [Int]
    private var output: [Int]
    init() {
        self.input = []
        self.output = []
    }
    
    func push(_ x: Int) {
        input.append(x)
    }
    
    func pop() -> Int {
        if output.isEmpty {
            while !input.isEmpty {
                output.append(input.popLast()!)
            }
        }
        return output.popLast()!    
}
    
    func peek() -> Int {
        if output.isEmpty {
            while !input.isEmpty {
                output.append(input.popLast()!)
            }
        }
        return output.last!
    }
    
    func empty() -> Bool {
        return input.isEmpty && output.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
