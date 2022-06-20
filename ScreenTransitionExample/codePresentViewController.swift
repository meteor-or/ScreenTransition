//
//  codePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/19.
//

import UIKit

protocol sendDataDelegate: AnyObject {
    func sendData(name: String)
}

class codePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    // delegate 패턴을 사용할 때 weak라는 키워드를 붙여줘야한다
    // 그렇지 않으면 강한 패턴이 걸려서 메모리 누수가 생긴다
    weak var delegate: sendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
    

    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "유성")
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
