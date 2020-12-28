/*

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree [3,9,20,null,null,15,7],

    3
   / \
  9  20
    /  \
   15   7
return its level order traversal as:

[
  [3],
  [9,20],
  [15,7]
]
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

func levelOrderTraversal(_ root: TreeNode?) -> [[Int]] {
    if root == nil { return [] }
    var res = [[Int]]()
    dfs(root, 0, &res)
    return res
}

func dfs(_ root: TreeNode?, _ level: Int, _ res: inout [[Int]]) {
    if root == nil { return }
    if level >= res.count {
        res.append([Int]())
    }
    res[level].append(root!.val)
    dfs(root?.left, level+1, &res)
    dfs(root?.right, level+1, &res)
}
