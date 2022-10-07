//let unsortedIntegers = [5, 1, 4, 2, 8]

/*var sortedIntegers = unsortedIntegers
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    let heldValue = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = heldValue
}

func bubbleSort(array: inout [Int]){
    var isSorted = false
    var pass = 0
    var swaps = 0
    var totalSwaps = 0
    print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(array)")
    while (!isSorted) {
        swaps = 0
        pass += 1
        for x in 0..<array.count-1 {
            if (array[x] > array[x + 1]) {
                swap(integers: &array, firstIndex: x, secondIndex: x + 1)
                swaps += 1                
            }
        }
        totalSwaps += swaps
        if (swaps==0) {
            isSorted = true
        }
        print("Pass: \(pass), Swaps:\(swaps)/\(totalSwaps), Array: \(array)")
    }    
}
bubbleSort(array: &sortedIntegers) */

import Foundation
var unsortedString = [""]
var unsortedIntegers: [Int] = []
while let input = readLine() {
    unsortedString.append(input)
}
var i = 0
var k = 0
var x:Float = 0
for _ in unsortedString {
    for s in unsortedString[i].utf8 {
        x += Float(s)/pow((1000.0), Float(k))
        k += 1
    }
    unsortedIntegers.append(Int(x))
    k = 0
    i += 1
    x = 0
}
var arr = unsortedIntegers
for _ in 0...arr.count {
    for value in 1...arr.count - 1 {
        if arr[value-1] > arr[value] {
            let largerValue = arr[value-1]            
            let largerString = unsortedString[value-1]
            unsortedString[value-1] = unsortedString[value]
            unsortedString[value] = largerString

            arr[value-1] = arr[value]
            arr[value] = largerValue            
        }
    }
}
print(arr)
