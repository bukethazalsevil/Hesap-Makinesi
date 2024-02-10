//
//  ViewController.swift
//  Hesap Makinesi
//
//  Created by Buket Hazal Sevil on 7.02.2024.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var number1 = ""
    var number2 = ""
    var result = 0
    var resultInt = 0
    var resultDouble = 0.0
    var num1 = 0
    var num2 = 0
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func numberButtons(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = String(sender.tag)
        } else {
            resultLabel.text = resultLabel.text! + String(sender.tag)
        }
        
        
        
    }
    
    @IBAction func operatorButtons(_ sender: UIButton) {
        number1 = resultLabel.text!
        resultLabel.text = ""
        
        
        
    }
    
    @IBAction func oppositeButton(_ sender: UIButton) {
        result = result * -1
        resultLabel.text = String(result)
    }
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text = "0"
    }
    @IBAction func equalButton(_ sender: UIButton) {
        number2 = resultLabel.text!
        num1 = Int(number1)!
        num2 = Int(number2)!
        
        switch sender.tag {
        case 13:
            result = Int(num1 + num2)
        case 14:
            result = Int(num1 - num2)
        case 15:
            result = Int(num1 * num2)
        case 16:
            result = num2 != Int(0.0) ? Int(num1 / num2) : 0
        case 10:
            result = Int(num1 * num2 / 100)
        default:
            break
        }
        
        resultInt = Int(result)
        resultDouble = Double(resultInt)
        
        resultLabel.text = String(result)
         
}
          @IBAction func pointButton(_ sender: UIButton) {
          if sender.tag == 17{
          String(sender.tag) + "."
          }
          
          
          }
          
          
          }
          
          
          
          
          
          
          
          
          

