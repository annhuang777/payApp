//
//  ViewController.swift
//  payApp
//
//  Created by Pin yu Huang on 2020/5/27.
//  Copyright © 2020 Pin yu Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var taxTextField: UITextField!
    
    @IBOutlet weak var personTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var shareLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func caculator(_ sender: Any) {
        //resignFirstResponder輸入完自動收起鍵盤
        priceTextField.resignFirstResponder()
        taxTextField.resignFirstResponder()
        personTextField.resignFirstResponder()
           //如果該輸入項目分為空白，則兩個計算項目會等於0
        if priceTextField.text == "",taxTextField.text == "",
            personTextField.text == "" {
            
            totalLabel.text == "0"
            shareLabel.text == "0"
            
        }else{
            //Double()得的數為optional需要得出一個數值所以要！
            let tax = Double(priceTextField.text!)! * Double(taxTextField.text!)! / 100
            let total = Double(priceTextField.text!)! + tax
            let share = total / Double(personTextField.text!)!
            
            totalLabel.text = String(total)
            shareLabel.text = String(share)
            
    
                
        }
        
    }
    
    //按下clear鍵清除後的狀態
    @IBAction func clear(_ sender: Any) {
        priceTextField.text = ""
        taxTextField.text = ""
        personTextField.text = ""
        totalLabel.text = "0"
        shareLabel.text = "0"
    }
    
    
    
}

