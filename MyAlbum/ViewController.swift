/*
 뷰의 기준점
 좌측 상단 0, 0을 기준으로 함
 가로가 x 축 세로가 y 축임
 */

/*
 앱은 이벤트를 기다리고 있음
 사용자가 클릭을 할 때 이벤트가 발생됨
 
 앱은 오브젝트로 구성
 오브젝트끼리 서로 메시지를 보냄
 앱은 이벤트에 의해 프로세스 동작함
 */

/*
 Object?
 특정 일을 수행하는 객체
 데이터, 메소드로 이루어짐
 */

/*
 String, variable
 var vs let
 var : 변경이 가능
 let : value가 변경 불가능
 실무에서는 constant를 주로 사용하는 것을 선호함
 variable은 변경이 가능해져 에러를 발생시킬 수 있음
 */

/*
 로컬 변수: 메소드 내부에서만 작동
 인스턴스 변수: Object 전역에서 사용 가능
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel! // outlet 연결
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
        priceLabel.text = "\(currentValue) won"
    }
    
    
    
    var currentValue = 0
    
    
    @IBAction func hellow(_ sender: Any) {
        //print("hellow")
        let myMessage = "가격은 ₩\(currentValue) 입니다"
        
        let alert = UIAlertController(title: "Hello", message: myMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OKayyyyy", style: .default, handler: { action in self.refresh()}) // closure 이용
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    // method 만드는 방법
    // 중복되는 코드가 있으면 method로 만듦
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        // 0~지정한 숫자까지의 랜덤한 숫자가 나옴
        currentValue = Int(randomPrice)
        priceLabel.text = "\(currentValue) won"
    }
    
    
}

