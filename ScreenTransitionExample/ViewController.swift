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
        print("ViewController 뷰가 로드 되었다.")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날 것이다.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타났다.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 사라질 것이다.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 사라졌다.")
    }
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {return}
        
        viewController.name = "유성"
        
        self.navigationController?.pushViewController( viewController, animated: true)
    }
    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        // as? 작업하면 해당 컨트롤러에 있는 상수에 접근할 수 있다.
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "codePresentViewController") as? codePresentViewController else {
            return
        }
        viewController.modalPresentationStyle = .fullScreen
        
        viewController.name = "유성"
        
        self.present(viewController, animated: true)
    }
    
}

