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
    @IBOutlet var nums: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<nums.count {
            nums[i].keyboardType = UIKeyboardType.numberPad
        }

    }

    @IBAction func sum(_ sender: Any) {
        var sum = 0
        for i in 0..<nums.count {
            sum += Int(nums[i].text!) ?? 0
        }
        
        sumLabel.text = String(sum)
    }

}

