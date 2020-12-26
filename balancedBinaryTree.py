// Given a binary tree, determine if the tree is height-balanced or not (left and right subtrees of every node differ not more than 1)

class TreeNode(object):
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


def isBalanced(self, root):    
    return height(self, root) != -1

def height(self, root):
    if not root:
        return 0

    leftHeight = self.height(root.left)
    if leftHeight is -1:
        return -1

    rightHeight = self.height(root.right)
    if rightHeight is -1:
        return -1

    if abs(leftHeight - rightHeight) > 1:
        return -1
    
    return 1 + max(leftHeight, rightHeight)
