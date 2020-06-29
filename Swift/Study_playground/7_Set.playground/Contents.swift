import UIKit

// 중복이 없는 유니크한 아이템을 관리할 때
// 순서와 상관이 없을 때

// var someArray: Array<Int> = [1, 2, 3, 4, 4]
var someSet: Set<Int> = [1, 2, 3, 4, 4]

someSet.isEmpty
someSet.count
someSet.contains(4)

someSet.insert(5)
someSet.remove(1)
