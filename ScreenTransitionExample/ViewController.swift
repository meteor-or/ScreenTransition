//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else {return}
        self.navigationController?.pushViewController( viewController, animated: true)
    }
    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "codePresentViewController") else {
            return
        }
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true)
    }
    
}

