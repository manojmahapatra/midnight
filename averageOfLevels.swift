/*
Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.
*/

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }

    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func averageOfLevels(_ root: TreeNode?) -> [Double] {
    var map = [Int: [Int]]()
    dfs(root, 0, &map)
    var arr: [Double] = Array(repeating: 0, count: map.keys.count)

    for key in map.keys {
        let values = map[key]!
        var sum: Double = 0
        values.forEach { 
            sum += Double($0)
        }
        arr[key] = sum/Double(values.count)
    }

    return arr
}

func dfs(_ root: TreeNode?, _ level: Int, _ map: inout [Int: [Int]]) {
    if root == nil { return }
    map[level, default: []].append(root!.val)
    dfs(root?.left, level+1, &map)
    dfs(root?.right, level+1, &map)    
}
