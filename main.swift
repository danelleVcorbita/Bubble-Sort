import Foundation
var unsortedString = [""]
var unsortedIntegers: [Int] = []
while let input = readLine() {
    unsortedString.append(input)
}
var a = 0
var b = 0
var x:Float = 0
for _ in unsortedString {
    for  w in unsortedString[a].utf8 {
        x += Float(w)/pow((1000.0), Float(b))
        b += 1
    }
    unsortedIntegers.append(Int(x))
    b = 0
    a += 1
    x = 0
}
var array = unsortedIntegers
for _ in 0...array.count {
    for value in 1...array.count - 1 {
        if array[value-1] > array[value] {
            let largerInt = array[value-1]            
            let largerString = unsortedString[value-1]
            unsortedString[value-1] = unsortedString[value]
            unsortedString[value] = largerString

            array[value-1] = array[value]
            array[value] = largerInt            
        }
    }
}
print(array, unsortedString)
