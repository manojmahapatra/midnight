/*
Find the kth largest element in an unsorted array. Note that it is the kth largest element in the sorted order, not the kth distinct element
*/

func findTheKthLargest(_ array: [Int], _ k: Int) -> Int {
   var array = array
   var start = 0
   var end = array.count - 1
   
   var index = array.count - k
   
   while start <= end {
     let pos = partition(start, end, &array)
     
     if pos == index {
       return array[pos]
     } else if pos < index {
       start = pos + 1
     } else {
       end = pos - 1
     }
   }
   
   return -1
}

func partition(_ start: Int, _ end: Int, _ array: inout [Int]) -> Int {
  var start = start
  var end = end
  let index = index
  let pivot = array[start]
  
  while start <= end {
    while start <= end, array[start] <= pivot {
      start += 1
    }
    
    while start <= end, array[end] >= pivot {
      end -= 1
    }
    
    if start <= end {
      swap(&array, start, end)
      start += 1
      end -= 1
    }
  }
}

func swap(_ array: inout [Int], _ start: Int, _ end: Int) {
  let temp = array[start]
  array[start] = array[end]
  array[end] = temp
}
