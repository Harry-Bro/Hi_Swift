import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers: Array[Int] = [2, 4, 6, 8]

// 배열 값 추가하는 방법
evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

// 배열이 비였는지 확인
let isEmpty = evenNumbers.isEmpty

// 배열방 개수
evenNumbers.count

print(evenNumbers.first)
print(evenNumbers.first!)

// 배열은 있을 수도 없을 수도 있어서
// firstItem은 Int Optional 타입으로 나타난다
let firstItem = evenNumbers.first

if let firstItem = evenNumbers.first {
    print(firstItem)
}

evenNumbers.min()
evenNumbers.max()

evenNumbers[0]
var lastItem = evenNumbers[evenNumbers.count - 1]

// ------>

// 0...3
let firstThree = evenNumbers[0...3] //range를 이용해서 배열 가져오기

evenNumbers.contains(3) // 3이 있는지 확인
evenNumbers.insert(0, at: 0) // 값 삽입
evenNumbers

// 특정 인덱스 삭제
evenNumbers.remove(at: 2)

// 전부 삭제
evenNumbers.removeAll()

// 특정 인덱스 값 바꾸기
evenNumbers = [0, 0, 0, 0]
evenNumbers[0...3] = [1, 2, 3 ,4]

// for문을 이용해서 배열 출력
for i in evenNumbers {
    print(i)
}

// index와 value를 가져오는 방법
for (index, value) in evenNumbers.enumerated() {
    print("\(index), \(value)")
}


// 앞에 3개를 제거한 후 나머지 값을 가져와줌
let firstThreeRemove = evenNumbers.dropFirst(3) // 앞에 3개를 제거 후 리턴해줌
firstThreeRemove

let lastRemove = evenNumbers.dropLast(3)
lastRemove

// 앞에 3개만 가져오는 방법
let getFirstThree = evenNumbers.prefix(3)
getFirstThree

// 뒤에 3개만 가져오는 방법
let lastThree = evenNumbers.suffix(3)
lastThree
