import UIKit

/*
 Structure: Value Types, Copy // Stack
 Class : Reference Types, Share // Heap
 
 Structure
 
 */

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기
// 2. 강의 어레이와 강사 이름을 받아서, 해당 강사의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기


struct lecture {
    let letcureName: String
    let teacherName: String
    let numOfStudent: Int
}


let lecture1 = lecture(letcureName: "IOS", teacherName: "Jack", numOfStudent: 10)
let lecture2 = lecture(letcureName: "JAVA", teacherName: "Taeyeon", numOfStudent: 30)
let lecture3 = lecture(letcureName: "Andoid", teacherName: "Jack", numOfStudent: 10)

func printLectureName(Lectures: [lecture], TeacherName: String) {
    for i in Lectures {
        if i.teacherName == TeacherName {
            print(TeacherName + " 선생님의 강의는 " + i.letcureName + "입니다")
        }
        
    }
}

printLectureName(Lectures: [lecture1, lecture2, lecture3], TeacherName: "Jack")
