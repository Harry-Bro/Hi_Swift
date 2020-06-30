import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
    
}

class Person {
    var firstName: String
    var lastName: String
    
    // initializer 생성자
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
     
        print("\(firstName) \(lastName)")
        
    }

}

class Student: Person {
    var grades: [Grade] = []
}

class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    // Designaed initializer
    init(firstName: String, lastName: String, sports: [String]) {
        // 규칙이 있음 자신으 클래스 먼저 규칙을 정해주고
        // 그 이후 super클래스를 정해줘야함
        // 아래의 경우 super가 sports보다 위로 올라오게 되면 에러가 발생됨
        // 2phase initialization
        
        // phase 1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        // phase 2
        self.train()
        
    }
    
    // Convenience initialization
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthlete {
    var footballTeam = "FC swift"
    
    override func train() {
        trainedTime += 2
    }
}


