class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanValues: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var result = 0
        var prevValue = 0

        for char in s.reversed() {
            if let value = romanValues[char] {
                if value < prevValue {
                    result -= value
                } else {
                    result += value
                }
                prevValue = value
            }
        }

        return result
    }
}