//
//  ViewController.swift
//  testInputTest
//
//  Created by HiroshiYamaguchi on 2018/02/01.
//  Copyright © 2018年 HiroshiYamaguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeLabel(_ sender: Any) {
        //ボタンがタップされたときの動作
        textLabel.text = inputField.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

