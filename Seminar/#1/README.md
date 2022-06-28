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
