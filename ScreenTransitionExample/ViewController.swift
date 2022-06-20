//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by lee yuseong on 2022/06/17.
//

import UIKit

class ViewController: UIViewController, sendDataDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    
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
    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        // as? 작업하면 해당 컨트롤러에 있는 상수에 접근할 수 있다.
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "codePresentViewController") as? codePresentViewController else {
            return
        }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "유성"
        // 델리게이트를 위임받기
        viewController.delegate = self
        
        
        self.present(viewController, animated: true)
    }
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {return}
        
        viewController.name = "유성"
        
        self.navigationController?.pushViewController( viewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 자동으로 호출
        // 전환하려는 인스턴스를 가져옴
        // 다운 캐스팅
        if let viewController = segue.destination as? suguePushViewController{
            viewController.name = "유성"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
}

