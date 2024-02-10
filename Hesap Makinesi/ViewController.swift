//
//  ViewController.swift
//  Hesap Makinesi
//
//  Created by Buket Hazal Sevil on 7.02.2024.
//

import UIKit

//enum yaratıyoruz
enum Operation {
  case add, subtract, multiply, divide, unknown
}

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

  var currentOperation: Operation = .unknown

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
      print("Operator button pressed: \(sender.tag)") //debug 
      number1 = resultLabel.text!
      resultLabel.text = ""

      switch sender.tag {
      case 13: // "+" işlemi için
          currentOperation = .add
          print("Operation set to add")
      case 14: // "-" işlemi için
          currentOperation = .subtract
          print("Operation set to subtract")
      case 15: // "*" işlemi için
          currentOperation = .multiply
          print("Operation set to multiply")
      case 16: // "/" işlemi için
          currentOperation = .divide
          print("Operation set to divide")
      default:
          currentOperation = .unknown
          print("Operation set to unknown")
      }
  }




  @IBAction func oppositeButton(_ sender: UIButton) {
    result = result * -1
    resultLabel.text = String(result)
  }
  @IBAction func clearButton(_ sender: UIButton) {
    resultLabel.text = "0"
  }


  @IBAction func equalButton(_ sender: UIButton) {
      print("Equal button pressed") //butonun çalışıyor mu kontrol ediyoruz
      number2 = resultLabel.text!
      print("Number1: \(number1), Number2: \(number2), Operation: \(currentOperation)") //number 1 ve 2 nin değer alıp almadığını ve doğru opeartor ile çalıştığını debug ediyoruz

      if let num1 = Double(number1), let num2 = Double(number2) { // Double'a dönüşüm
          switch currentOperation {
          case .add:
            resultInt = Int(num1 + num2) //
          case .subtract:
            resultInt = Int(num1 - num2)
          case .multiply:
            resultInt = Int(num1 * num2)
          case .divide:
              resultDouble = num2 != 0 ? num1 / num2 : Double.nan // 0'a bölme kontrolü
          default:
              print("Unknown operation")
          }
          print("Calculation result: \(resultInt)") //debug
          resultLabel.text = String(resultInt)
          currentOperation = .unknown // tekrar kullanım için hazırlıyoruz
      } else {
          print("Number conversion failed")
          resultLabel.text = "Error"
      }
  }


  @IBAction func pointButton(_ sender: UIButton) {
    if sender.tag == 17{
      String(sender.tag) + "."
    }


  }


}




          
          
          
          
          
          
          
          

