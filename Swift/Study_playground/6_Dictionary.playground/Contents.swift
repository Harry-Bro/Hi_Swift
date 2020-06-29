import UIKit

// 순서가 없고 key와 value로 이루어져 있음
// key는 중복될 수 없음
// Java LinkedList와 같음

var scoreDic: [String: Int] = ["Jason": 80, "Jay": 90, "Jake": 90]

// 다른 방법으로 선언 초기화
var scoreDic2: Dictionary<String, Int> = ["Jason": 80, "Jay": 90, "Jake": 90]
scoreDic2

// 하지만 위에 방법을 더 많이 씀


// 값 가져오는 방법
scoreDic["Jason"]

// 배열이 비어있는지 확인
scoreDic.isEmpty

// 배열 빈강통으로 만드는 방법
//scoreDic = [:]

// 배열 길이
scoreDic.count

// 값 변경
scoreDic["Jason"] = 90

// 배열 추가
scoreDic["Jack"] = 100
scoreDic

// 배열 제거
scoreDic["Jack"] = nil
scoreDic

// for 문을 이용해서 가져오기;
for (key, value) in scoreDic {
    print("\(key), \(value)")
}

print()

// key만 가져오기
for key in scoreDic.keys {
    print(key)
}

// 도전과제
// 1. 이름, 직업, 도시에대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트 하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

var myDic: [String: String] = ["name": "Jason", "job": "IOS", "City": "Seoul"]

myDic["City"] = "Busan"


func printNameAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["City"] {
        print(name, city)
    } else {
        
    }
}


printNameAndCity(dic: myDic)
