//
//  suguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/19.
//

import UIKit

class suguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        // 바로 전화면으로 돌아가기
        self.navigationController?.popViewController(animated: true)
        
//  루트 페이지. 홈 화면으로 돌아가기      self.navigationController?.popToRootViewController(animated: <#T##Bool#>)
    }
    
}
