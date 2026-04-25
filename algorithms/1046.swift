// 1046. Last Stone Weight
// https://leetcode.com/problems/last-stone-weight/description/?envType=problem-list-v2&envId=dsa-sequence-valley-heap

class Heap {
    private var data: [Int] = [0]

    var count: Int {
        data.count - 1
    }

    var first: Int {
        data[1]
    }

    func heapify(_ array: [Int]) {
        data = [0] + array

        for i in stride(from: count / 2, through: 1, by: -1) {
            siftDown(i)
        }
    }

    func push(_ val: Int) {
        data.append(val)
        var i = data.count - 1

        while i > 1 && data[i] > data[i / 2] {
            data.swapAt(i, i / 2)
            i /= 2
        }
    }

    func pop() -> Int? {
        if count == 0 {
            return nil
        }

        if count == 1 {
            return data.popLast()
        }

        let result = data[1]
        data[1] = data.removeLast()
        siftDown(1)

        return result
    }

    private func siftDown(_ index: Int) {
        var i = index

        while true {
            let left = i * 2
            let right = i * 2 + 1
            var largest = i

            if left < data.count && data[left] > data[largest] {
                largest = left
            }

            if right < data.count && data[right] > data[largest] {
                largest = right
            }

            if largest == i {
                break
            }

            data.swapAt(i, largest)
            i = largest
        }
    }
}

class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        let heap = Heap()
        heap.heapify(stones)

        while heap.count > 1 {
            let x = heap.pop()!
            let y = heap.pop()!

            if x > y {
                heap.push(x - y)
            }
        }

        return heap.pop() ?? 0
    }
}
