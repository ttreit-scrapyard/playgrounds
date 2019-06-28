import UIKit

//
let myArray: [Int] = [2, 3, 4, 1, 5]
let k: Int = 2 //k is given
var i: Int = 0 //i is the index of the array element
var currentSubArraySum: Int = 0
var maxSubArraySum: Int = 0


func subArraySum(array: Array <Int>, index: Int, k: Int)  -> Int {
    //arguments in Swift are immutable
    var varIndex = index
    var varK = k
    var total: Int = 0
    while varK > 0 {
        total = total + array[varIndex]
        varIndex = varIndex + 1
        varK = varK - 1
    }
    
    return total
    
}

// find the subarray of contiguous "k" elements that sums to the largest number

while i <= myArray.count - k {
    currentSubArraySum = subArraySum(array: myArray, index: i, k: k)
    if maxSubArraySum < currentSubArraySum {
        maxSubArraySum = currentSubArraySum
    }
    i = i + 1
    
}
print("\(maxSubArraySum)")

