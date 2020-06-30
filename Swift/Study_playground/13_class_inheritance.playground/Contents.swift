import UIKit

/*
 상속은 언제 하면 좋을까?
 상속의 경우 중복을 제거할 수 있지만 상속이 깊어질 수록 유지보수가 어려움
 
 단일 책임(Single responsibility): 한 클래스가 너무 많은 것을 책임지면 좋지 않다
    너무 많아지면 정체성도 모호해지고 유지보수 어려움
 Type Safety(타입이 분명해야할 때)
 Shared Base classes(다자녀가 있음)
 Extensibility: 확장성이 필요한 경우
 Identity: 정체를 파악하기 위해
 */

struct Grade {
    var letter: Character
    var points: Double
    var crdits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

// 상속하는 방법
class Student: Person {
    var grades: [Grade] = []
}

let Harry = Person(firstName: "Bro", lastName: "Harry") // 인스턴스화
let Jack = Student(firstName: "Jack", lastName: "Lee")

let math = Grade(letter: "B", points: 8.5, crdits: 3)
Jack.grades.append(math)


// 학생인데 운동선수
class StudentAthelete:Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

// 운동선수인데 축구선수
class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heongmin", lastName: "Son")


athelete1.firstName
athelete2.firstName

athelete1 = athelete2 // upper casting

//athelete1.footballTema // 부모클래스로 넘어갔기 때문에 자식클래스였던 footballTeam 변수는 사용불가

// footballTeam 사용하는 방법
if let son = athelete1 as? FootballPlayer {
    print("---> team: \(son.footballTeam)")
}

