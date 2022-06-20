//
//  suguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/19.
//

import UIKit

class suguePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    // 전처리 : prepare 메서드
    // 시스템에 의해 자동으로 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        // 바로 전화면으로 돌아가기
        self.navigationController?.popViewController(animated: true)
        
//  루트 페이지. 홈 화면으로 돌아가기      self.navigationController?.popToRootViewController(animated: <#T##Bool#>)
    }
    
}
