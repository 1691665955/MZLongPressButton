//
//  ViewController.swift
//  MZLongPressButton
//
//  Created by 曾龙 on 2021/12/17.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.size.width

class ViewController: UIViewController {

    lazy var minusBtn: MZLongPressButton = {
        let btn = MZLongPressButton(type: .custom)
        btn.frame = CGRect(x: 40, y: 100, width: 80, height: 40)
        btn.setTitle("-", for: .normal)
        btn.setTitleColor(.brown, for: .normal)
        return btn
    }()
    
    lazy var addBtn: MZLongPressButton = {
        let btn = MZLongPressButton(type: .custom)
        btn.frame = CGRect(x: SCREEN_WIDTH - 120, y: 100, width: 80, height: 40)
        btn.setTitle("+", for: .normal)
        btn.setTitleColor(.brown, for: .normal)
        return btn
    }()
    
    lazy var titleLB: UILabel = {
        let label = UILabel(frame: CGRect(x: 120, y: 100, width: SCREEN_WIDTH - 240, height: 40))
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        label.textColor = .brown
        label.text = "0"
        return label
    }()
    
    @IBOutlet weak var otherBtn: MZLongPressButton!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(minusBtn)
        view.addSubview(titleLB)
        view.addSubview(addBtn)
        
        minusBtn.longPress = {
            self.count -= 1
            if self.count < 0 {
                self.count = 0
            }
            self.titleLB.text = "\(self.count)"
        }
        
        addBtn.longPress = {
            self.count += 1
            self.titleLB.text = "\(self.count)"
        }
        
        
        otherBtn.timeStart = 2
        otherBtn.timeGap = 1
        otherBtn.longPress = minusBtn.longPress
    }
}

