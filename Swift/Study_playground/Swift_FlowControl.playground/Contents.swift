import UIKit
import Foundation

// --- while

/*
 while 조건 {
    code...
 }
 */

// 조건을 먼저 검사하고 code를 수행함
print("while")
var i = 0
while i < 10 {
    print(i)
    i += 1
    
//    if i >= 10 {
//        break
//    }
}

// repeat
// code를 먼저 수행하고 조건을 검사함
print("repeat")
i = 0
repeat {
    print(i)
    i += 1
} while i < 10

// -- for loop

let closedRangee = 0...10 // 0 ~ 10
let halfClosedRange = 0..<10 // 0 ~ 9

var sum = 0
for i in closedRangee {
//    print(i)
    sum += i
}
print(sum)

sum = 0
for i in halfClosedRange {
//    print(i)
    sum += i
}
print(sum)

var sinValue: CGFloat = 0 // CGFloat Type
for i in closedRangee {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "suji"
for _ in closedRangee {
    print("I'm \(name)")
}
// i 필요 없으면 _ 로 대체할 수 있음

// 짝수 츌력
for i in closedRangee {
    if i % 2 == 0 {
        print("짝수: \(i)")
    }
}

for i in closedRangee where i % 2 == 0 {
    // where 조건에 맞을 때만 코드를 실행함
    print(i)
}

for i in closedRangee where i % 2 == 0 {
    if i == 4 || i == 6 {
        continue
    }
    print(i)
}


// --- switch

var num = 10

switch num {
case 0...5:
    print("---> 0~5 입니다.")
case 6...10:
    print("---> 6~10 입니다")
default:
    print("---> 나머지 입니다.")
}

let pet = "bird"

switch pet {
case "dog":
    print("---> 개입니다")
default:
    print("---> 모르겠습니다")
}

num = 20
switch num {
case _ where num % 2 == 0: // switch문에도 조건을 넣을 수 있음
    print("짝수입니다")
default:
    print("홀수입니다")
}

var coordinate = (x: 0, y: 10) // Tuple

switch coordinate {
case (0, 0):
    print("원점입니다")
case (_, 0):
    print("x축입니다")
case (0, _):
    print("y축입니다")
default:
    print("")
}

coordinate = (x: 0, y: 10)

switch coordinate {
case (0, 0):
    print("원점입니다")
case (let x, 0):
    print("x축입니다 \(x)")
case (0, let y):
    print("y축입니다 \(y)")
case (let x, let y):
    print(x, y)
}

