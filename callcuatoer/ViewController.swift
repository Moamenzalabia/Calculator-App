//
//  ViewController.swift
//  callcuatoer
//
//  Created by Momen on 9/17/17.
//  Copyright © 2017 Momen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputnumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var newcllan=true
    func addnumbers(number:String){
    var textnumber = String(inputnumber.text!)
        if(newcllan==true){
        textnumber = ""
            newcllan = false
        }
        textnumber = textnumber! + number
        inputnumber.text = textnumber!
    }
  
    @IBAction func bt0(_ sender: Any) {
        addnumbers(number: "0")
    }

    @IBAction func btdot(_ sender: Any) {
        addnumbers(number: ".")
    }
    @IBAction func bt1(_ sender: Any) {
        addnumbers(number: "1")
    }
    @IBAction func bt2(_ sender: Any) {
        addnumbers(number: "2")
    }
    @IBAction func bt3(_ sender: Any) {
        addnumbers(number: "3")
    }
    @IBAction func bt4(_ sender: Any) {
        addnumbers(number: "4")
    }
    @IBAction func bt5(_ sender: Any) {
        addnumbers(number: "5")
    }
    @IBAction func bt6(_ sender: Any) {
        addnumbers(number: "6")
    }
    @IBAction func bt7(_ sender: Any) {
        addnumbers(number: "7")
    }
    @IBAction func bt8(_ sender: Any) {
        addnumbers(number: "8")
    }
    @IBAction func bt9(_ sender: Any) {
        addnumbers(number: "9")
    }
         var op = "+"
    var number1 :Double?
    // when he inter number save n1 in number1 and cllan lable and start from first to get number2
    @IBAction func btmal(_ sender: Any) {
        op = "*"
        number1 = Double(inputnumber.text!)
        newcllan = true
    }
    @IBAction func btdiv(_ sender: Any) {
        op = "÷"
        number1 = Double(inputnumber.text!)
        newcllan = true
    }
    @IBAction func btsub(_ sender: Any) {
        op = "-"
        number1 = Double(inputnumber.text!)
        newcllan = true
    }
    
    @IBAction func btadd(_ sender: Any) {
        op = "+"
        number1 = Double(inputnumber.text!)
        newcllan = true

    }
    @IBAction func clear(_ sender: Any) {
        inputnumber.text = "0"
        newcllan = true
    }
    
    @IBAction func btminpos(_ sender: Any) {
        var textnumber = String(inputnumber.text!)
        textnumber = "-"+textnumber!
        inputnumber.text = textnumber!
        }
    
    @IBAction func pers(_ sender: Any) {
        var number1 = Double(inputnumber.text!)
        number1 = number1!/100.0
        inputnumber.text = String(number1!)
    }
    @IBAction func btqual(_ sender: Any) {
        let number2 = Double(inputnumber.text!)
        var resualt:Double?
        switch op {
        case "*":
                resualt = Double(number1! * number2!)
        case "+":
            resualt = Double(number1! + number2!)
        case "-":
            resualt = Double(number1! - number2!)
           
        case "÷":
            resualt = (number1! / number2!)
        default:
             resualt = 0
        }
        inputnumber.text = String(resualt!)
        newcllan = true
    }
}

