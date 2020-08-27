//
//  ViewController.swift
//  Task1
//
//  Created by 小川卓馬 on 2020/08/25.
//  Copyright © 2020 小川卓馬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sumLabel: UILabel!
//    @IBOutlet var nums: [UITextField]!
    @IBOutlet var numberTextFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for i in 0..<nums.count {
//            nums[i].keyboardType = UIKeyboardType.numberPad
//        }
        
        numberTextFields.forEach {
            $0.keyboardType = .numberPad
        }

    }

    @IBAction func sum(_ sender: Any) {
        var sum = 0
//        for i in 0..<nums.count {
//            sum += Int(nums[i].text!) ?? 0
//        }
        
//        numberTextFields.forEach { (num) in
//            sum += Int(num.text!) ?? 0
//        }
    
        // $0はクロージャーの第一引数
        // 上で言うnumが$0
        
        numberTextFields.forEach {
            sum += Int($0.text!) ?? 0
        }
        
        sumLabel.text = String(sum)
    }

}

