//
//  suguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/19.
//

import UIKit

class suguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        // 이전화면으로 돌아가기
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
