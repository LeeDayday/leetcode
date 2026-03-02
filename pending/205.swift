// 205. Isomorphic Strings
// https://leetcode.com/problems/isomorphic-strings/submissions/1935626432/

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var data: [Character: Character] = [:]
        var s = Array(s)
        var t = Array(t)
        var visited = Set<Character>()

        for i in 0..<s.count {
            let sc = s[i]
            let tc = t[i]

            if let mapped = data[sc] {
                if mapped != tc { return false }
            }
            else {
                if visited.contains(tc) { return false }
                data[sc] = tc
                visited.insert(tc)
            }
        }
        return true
    }
}
