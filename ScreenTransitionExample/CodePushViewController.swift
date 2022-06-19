//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/19.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true);
    }
}
