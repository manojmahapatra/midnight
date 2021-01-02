/*
Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, 
and return an array of the non-overlapping intervals that cover all the intervals in the input.

Example 1:

Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
*/

func merge(_ intervals: [[Int]]) -> [[Int]] {
    guard intervals.count > 1 else { return intervals }
    let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })    

    var res = [[Int]]()
    for interval in sortedIntervals {
        if res.isEmpty {
            res.append(interval)
            continue
        }

        let count = res.count
        if res[count-1][1] < interval[0] {
            res.append(interval)
            continue
        }

        res[count-1][1] = max(res[count-1][1], interval[1])
    }

    return res
}
