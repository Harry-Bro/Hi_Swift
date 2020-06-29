import UIKit

/*
 overload
 함수 이름이 같지만 파라미터를 다르게 받는 것
 */

func printTotalPrice(price: Int, count: Int) {
    print("--- Total Price \(price) * \(count) = \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print("--- Total Price \(price) * \(count) = \(price * count)")
}


// In - Out parameter
// Swift는 기본적으로 파라미터를 받아올 때 constant로 받아오기 때문에 값을 변경할 수 없다
// inout을 작성하면 값을 변경할 수 있음

func increaseValue(_ value: inout Int) {
    value += 1
    print(value)
}

var num = 10
increaseValue(&num) //&붙여야지 inout parameter 값인 것을 알 수 있음
