// Write a function that takes an array of integers and returns a sorted version of that array
// time: O(n^2), space: O(1)

def selectionSort(array):
    currIdx = 0

    while currIdx < len(array) - 1:
        smallestIdx = currIdx

        for i in range(currIdx + 1, len(array)):
            if array[smallestIdx] > array[i]:
                smallestIdx = i

        swap(currIdx, smallestIdx, array)
        currIdx += 1

    return array

def swap(i, j, array):
    array[i], array[j] = array[j], array[i]
    
