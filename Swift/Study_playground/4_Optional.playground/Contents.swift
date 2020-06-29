import UIKit

var carName: String?
carName = nil
carName = "포르쉐"

// 간단한 과제
// 1. 최애하는 배우 이름 담는 변수를 작성 타입은 String?
// 2. let num = Int("10")의 변수 타입은 무엇일까?

var myFavorAct: String? = nil

let num = Int("10") // Casting ==> num의 type은 Int Optional

// optional에 관련한 고급 기능 4가지

// Forced unwrapping ==> 억지로 박스 언박싱
// Optional binding (if let) ==> 부드럽게 박스 까보기 1
// Optional binding (guard) ==> 부드럽게 박스 까보기 2
// nil coalescing ==> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

print(carName)
print(carName!) // 강제 언박싱
// 값이 없는데 강제로 언박싱하려면 에러 발생함

// 부드럽게 박스 언박싱
if let unwrappedCarName = carName {
    print(unwrappedCarName) // 값이 있을경우
} else {
    print("car 없다") // 값이 nil 일 경우
}

func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
        // 복잡성
        // Cyclomatic Complexity
    } else {
        print("Int로 컨버팅 안됨")
    }
}

printParsedInt(from: "10")
printParsedInt(from: "열")


// guard를 사용하는 방법
// Cyclomatic Complexity를 줄일 수 있는 방법
func printParsedInt2(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 변환 안됨")
        return
    }
    
    print(parsedInt)
}

printParsedInt2(from: "10")
printParsedInt2(from: "열")

// 변수를 만드는데 Optional이지 않았으면 좋겠어!
// 그래서 만약 nil 이면  default 값을 줄래!

let myCarName: String = carName ?? "my car"

// 도전 과제
// 1. 최애 음식이름을 담는 변수를 작성하시고 String?,
// 2. Optional 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

let myFavorFood: String? = nil

if let favorFood = myFavorFood {
    print(favorFood)
} else {
    print("좋아하는 음식 없음")
}


func printNickName(name: String?) {
    guard let nickName = name else {
        print("만들어 보자")
        return
    }
    print(nickName)
}
