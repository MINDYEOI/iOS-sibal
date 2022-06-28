# IBOutlet, IBAction으로 컴포넌트 연결하기
## 버튼 클릭 시 라벨 메시지 바뀌도록 하기

### 실행화면
![](https://velog.velcdn.com/images/mindyeoi/post/5374ad56-6078-48c3-9c58-fd7cf862de8d/image.gif)

### 소스코드
```swift
//
//  ViewController.swift
//  sibal
//
//  Created by mindyeoi on 2022/06/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.numberOfLines = 0
        titleLabel.text = "Before the button touched"
    
        
    }

    @IBAction func changeButtonClicked(_ sender: Any) {
        
        titleLabel.text = "Button Touched"
        titleLabel.textColor = .red
    }
    
}


```

## 이름과 전화번호를 입력받아 라벨에서 출력하기
### 고려해야 할 사항
1. textField에서 clear 버튼을 텍스트를 작성하는 동안 노출되도록 할 것
2. 각 textField 별로 placeHolder를 이름 / 휴대폰 번호로 만들 것
3. 등록하기를 눌렀을 때 `(이름)의 번호는 (번호) 입니다!` 라는 문구가 Label에 표기될 것
4. 이름 입력하는 키보드는 일반 키보드로, 휴대폰 번호 입력하는 키보드는 번호 키보드로 나오도록 할 것
5. textField 2개 모두 다 내용이 있을 때만 버튼을 눌렀을 때 라벨이 표시되도록 할 것

### 실행화면
![](https://velog.velcdn.com/images/mindyeoi/post/ab46df9b-1c16-4ec4-9571-df484a91828b/image.gif)

### 소스코드
```swift
    //
    //  ViewController.swift
    //  sibal
    //
    //  Created by mindyeoi on 2022/06/28.
    //

    import UIKit

    class ViewController: UIViewController {
        @IBOutlet weak var resultLabel: UILabel!
        @IBOutlet weak var nameTextField: UITextField!
        @IBOutlet weak var phoneNumberTextField: UITextField!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            // 4. Keyboard setting
            nameTextField.keyboardType = .default
            phoneNumberTextField.keyboardType = .phonePad
            
            // 1. Set clearButtonMode = .whileEditing
            nameTextField.clearButtonMode = .whileEditing
            phoneNumberTextField.clearButtonMode = .whileEditing
            
            // 2. Set placeHolder
            nameTextField.placeholder = "Enter your name"
            phoneNumberTextField.placeholder = "Enter your phone number"
            
            
        }

        @IBAction func changeButtonClicked(_ sender: Any) {
            
            // 3. Set Label when text exists
            if nameTextField.text?.isEmpty == true ||
                phoneNumberTextField.text?.isEmpty == true {
                resultLabel.text = ""
            }
            
            else {
                resultLabel.text = "\(phoneNumberTextField.text!) is \(nameTextField.text!)'s."
            }
            

        }
        
    }


```
