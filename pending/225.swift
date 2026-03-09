// 225. Implement Stack using Queues
// https://leetcode.com/problems/implement-stack-using-queues/description/

class Queue {
    private var store = [Int]()
    var size: Int { store.count }
    func add(_ x: Int) { store.append(x) }
    func remove() -> Int { store.remove(at: 0) }
}
class MyStack {
    var queue = Queue()
    var topValue: Int = 0

    init() {}
    
    func push(_ x: Int) {
        queue.add(x)
        topValue = x
    }
    
    func pop() -> Int {
        var tmpQueue = Queue()
        let result = topValue
        while queue.size > 1 {
            topValue = queue.remove()
            tmpQueue.add(topValue)
        }
        queue = tmpQueue
        return result
    }
    
    func top() -> Int {
        return topValue
    }
    
    func empty() -> Bool {
        return queue.size == 0
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
