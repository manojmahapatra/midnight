// write a function that takes an array of integers and returns an array of the same length, 
// where each element in the output array is equal to the products of every other element in the array.
// time: O(n), space: O(n)

def arrayOfProducts(array):
    res = [1 for _ in range(len(array))]

    left = 1
    for i in range(len(array)):
        res[i] = left
        left *= array[i]

    right = 1
    for i in reversed(range(len(array))):
        res[i] *= right
        right *= array[i]

    return res
