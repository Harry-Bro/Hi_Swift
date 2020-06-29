import UIKit

// 이름이 없는 메소드라고 생각하셈

func multiplyMethod(_ num1: Int, _ num2: Int) -> Int {
    let value = num1 * num2
    return value
}

multiplyMethod(2, 10)


var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}

// 짧게 줄이는 방법
//var multiplyClosure: (Int, Int) -> Int = { (a, b) -> Int in
//    return a * b
//}

//var multiplyClosure: (Int, Int) -> Int = { (a, b) in
//    return a * b
//}

//var multiplyClosure: (Int, Int) -> Int = { a, b in
//    return a * b
//}

//var multiplyClosure: (Int, Int) -> Int = { ($0 * $1) }


func operationNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operationNum(a: 3, b: 2, operation: multiplyClosure)

// Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()

count // 본래는 scope를 벗어났기 때문에 count라는 변수를 사용 못하지만
// Closure에 붙잡혀서 사용할 수 있게됨

