import UIKit

struct Person {
    // Stored property
    var firstName: String {
        didSet {
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    // 나중에 실행이 되는 코드
    lazy var isPopular: Bool = {
        if fullName == "Harry Bro" {
            return true
        } else {
            return false
        }
    }()
    
    
    // Computed property
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
    var fullName: String {
        get {
             return "\(firstName) \(lastName)"
        }
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    static let isAlien: Bool = false // Type property // instance 생성 안 해도 사용 가능
    
}

var person1 = Person(firstName: "Jason", lastName: "Lee")

person1.firstName
person1.lastName

person1.firstName = "kim"
person1.lastName = "John"

person1.fullName

person1.fullName = "Harry Bro"

Person.isAlien // 인스턴스 생성 안 하고 struct 자체 기능을 사용

person1.isPopular

