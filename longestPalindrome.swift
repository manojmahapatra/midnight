// find the longest palindromic string in a word

func longestPalindrome(_ s: String) -> String {
    var longest = ""

    for i in 0 ..< s.count {
        for j in i ..< s.count {
            let leftIdx = s.index(s.startIndex, offsetBy: i)
            let rightIdx = s.index(s.startIndex, offsetBy: j+1)
            let subString = String(s[leftIdx ..< rightIdx])

            if subString.count > longest.count, isPalindrome(subString) {
                longest = subString 
            }
        }        
    }

    return longest
}

func isPalindrome(_ s: String) -> Bool {
    var leftP = 0
    var rightP = s.count - 1 
    var leftIdx = s.index(s.startIndex, offsetBy: leftP)
    var rightIdx = s.index(s.startIndex, offsetBy: rightP)

    while leftIdx < rightIdx {
        if s[leftIdx] != s[rightIdx] { return false }

        leftP += 1
        rightP -= 1

        leftIdx = s.index(s.startIndex, offsetBy: leftP)
        rightIdx = s.index(s.startIndex, offsetBy: rightP)
    }

    return true
}
