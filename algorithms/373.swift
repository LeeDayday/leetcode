// 373. Find K Pairs with Smallest Sums
// https://leetcode.com/problems/find-k-pairs-with-smallest-sums/description/?envType=problem-list-v2&envId=dsa-sequence-valley-heap

class MinHeap {
    var data: [(sum: Int, i: Int, j: Int)] = []

    var isEmpty: Bool {
        data.isEmpty
    }

    func push(_ item: (sum: Int, i: Int, j: Int)) {
        data.append(item)
        siftUp(data.count - 1)
    }

    func pop() -> (sum: Int, i: Int, j: Int)? {
        if data.isEmpty { return nil }
        if data.count == 1 { return data.removeLast() }

        let result = data[0]
        data[0] = data.removeLast()
        siftDown(0)
        return result
    }

    private func siftUp(_ index: Int) {
        var i = index

        while i > 0 {
            let parent = (i - 1) / 2

            if data[i].sum >= data[parent].sum {
                break
            }

            data.swapAt(i, parent)
            i = parent
        }
    }

    private func siftDown(_ index: Int) {
        var i = index

        while true {
            let left = i * 2 + 1
            let right = i * 2 + 2
            var smallest = i

            if left < data.count && data[left].sum < data[smallest].sum {
                smallest = left
            }

            if right < data.count && data[right].sum < data[smallest].sum {
                smallest = right
            }

            if smallest == i {
                break
            }

            data.swapAt(i, smallest)
            i = smallest
        }
    }
}

class Solution {
    func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
        var i: Int = 0
        var j: Int = 0
        var answer: [[Int]] = []

        var minHeap = MinHeap()

        for i in 0..<min(nums1.count, k) {
            minHeap.push((nums1[i] + nums2[0], i, 0))
        }

        while answer.count < k, let item = minHeap.pop() {
            let i = item.i
            let j = item.j

            answer.append([nums1[i], nums2[j]])

            if j + 1 < nums2.count {
                minHeap.push((nums1[i] + nums2[j + 1], i, j + 1))
            }
        }
        return answer
    }
}
