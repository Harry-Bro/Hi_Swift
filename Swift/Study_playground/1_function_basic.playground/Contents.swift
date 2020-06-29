import UIKit

/*
 method는 object에 속해서 실행될 때
 */

func printName() {
    let name = "Harry"
    print(name)
}

printName()

// parameter
// 숫자를 받아서 10을 곱해서 출력

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

func printTotalPrice(가격 value: Int, count: Int) {
        // parameter 표시되는 것을 value가 아니라 가격으로 나타냄
    print(value * count)
}

printTotalPrice(가격: 500, count: 2)

func printTotalPriceWithDefaultValue(value: Int = 1500, count: Int) {
    print(value * count)
}
// default 가격을 1500원으로 줌

printTotalPriceWithDefaultValue(count: 2)
printTotalPriceWithDefaultValue(value: 1000, count: 2)

// return 값이 있는 경우
func totalPrice(Price: Int, Count: Int) -> Int {
    let totalPrice = Price * Count
    return totalPrice
}

let calculatedPrice = totalPrice(Price: 1000, Count: 77)


// 1. 성, 이름을 받아서 fullname 출력하는 함수 만들기
// 2. 1번에서 만든 함수를 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
// 3. 성, 이름을 받아서 fullname return하는 함수 만들기

func printfullName(_ lastName: String, _ FirstName: String) -> String {
//    print("\(lastName) \(firstName)")
    return lastName + " " + FirstName
}

let myName = printfullName("Harry", "Bro")
