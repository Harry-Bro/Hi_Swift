import UIKit

var str = "Hello, playground"

let value = arc4random_uniform(100)
print(value)

print(str)

/*
 Comment
 */

// --- Tuple

let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 2, y: 3) // 명시적으로 Tuple 생성

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

// 한번에 저장하는 방법
let (x3, y3) = coordinatesNamed
x3
y3

// --- Boolean

let yes = true
let no = false

let trueOrfalse = 3 > 2

let name1 = "Jin"
let name2 = "Jason"

let nameEqaul = name1 == name2

// --- if else
if trueOrfalse {
    print("---> true")
} else {
    print("---> false")
}

if nameEqaul {
    print("ture")
} else {
    print("false")
}

let isJason = true
let isMale = true

let msg: String
if isJason && isMale {
    msg = "Hello Jason"
} else {
    msg = "Hello somebody"
}
print("Message: " + msg)
print("Message: \(msg)")

// --- 삼항 연산자
let taeyeonName = "Taeyeon"
let isTaeyeon: String = taeyeonName == "Taeyeon" ? "Yes" : "No"

// --- Scope
// 변수가 사용되는 범위
// { ... scope ... }
// Local Scope

func hello() {
    var hours = 50
    let payPerHour = 10000
    var salary = 0

    if hours > 40 {
        let extraHours = hours - 40
        salary += extraHours * payPerHour * 2
        hours -= extraHours
    }

    salary += hours * payPerHour
}

hello()


// --- Flow Control
// 코드 흐름을 제어하는 것 ex) if - else 문
