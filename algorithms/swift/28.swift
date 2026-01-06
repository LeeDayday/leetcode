// 28. Find the Index of First Occurrence in a String
// https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let m: Int = haystack.count
        let n: Int = needle.count
        if m < n { 
            return -1 
        } else if m == n {
            return haystack == needle ? 0 : -1
        }
        
        var s: String.Index = haystack.startIndex
        var e: String.Index = haystack.index(s, offsetBy: n - 1)
        for i in 0...m-n {
            if haystack[s...e] == needle { 
                return i 
            }
            s = haystack.index(after: s)
            e = haystack.index(after: e)
        }
        return -1

    }
}
