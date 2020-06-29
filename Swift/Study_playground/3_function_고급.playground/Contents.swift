import UIKit

// --- Function as a param
// 변수에 함수를 넣는 법
// 파라미터를 함수로 받는 법
func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int{
    return a - b
}

var myFunc = add // 함수를 변수에 담을 수 있음
myFunc(1, 2)

myFunc = subtract
myFunc(1, 2)


// 메소드를 parameter로 가져오는 방법
func printResult(_ f: (Int, Int) -> Int, _ a: Int, _ b: Int) -> Int {
    // 함수를 파라미터로 받아올 수 있음
    let result = f(a,b)
    return result
}


printResult(add, 1, 2)
