import UIKit

struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0

    func remainSeats() -> Int {
        let remainSeats = lec.maxStudents - lec.numOfRegistered
        return remainSeats
    }
    
    // 변수들의 값을 변경시키고 하면 mutating을 명시해줘야함
    mutating func register() {
        numOfRegistered += 1
    }
    
    static let target: String = "Anybody want to learn something"
    
    static func schoolName() -> String {
        return "abc school"
    }

}

var lec = Lecture(title: "iOS Basic")

lec.remainSeats()
lec.register()
lec.remainSeats()

Lecture.schoolName()

struct Math {
    static func abs(a: Int) -> Int {
        if a > 0 {
            return a
        } else {
            return -1
        }
    }
}

// 추가로 정의
// java의 오버라이드와 같음
extension Math {
    static func square(a: Int) -> Int {
        return a * a
    }
    static func half(a: Double) -> Double {
        return a / 2
    }
}

extension Int {
    func square() -> Int {
        return self * self
    }
}

var value: Int = 20

value.square()
