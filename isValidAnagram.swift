// write a program to validate if two strings are anagram or not

func isAnagram(_ s: String, _ t: String) -> Bool {
    // base case
    guard s.count == t.count else { return false }
    var counter = Array(repeating: 0, count: 26)

    let scalarVal = UnicodeScalar("a").value

    for ch in s.unicodeScalars {
        counter[Int(ch.value - scalarVal)] += 1
    }

    for ch in t.unicodeScalars {
        counter[Int(ch.value - scalarVal)] -= 1
    }

    for i in counter {
        if i != 0 {
            return false
        }
    }

    return true
}
