//
//  ViewController.swift
//  calculator
//
//  Created by Himanshu Varshney on 08/06/15.
//  Copyright (c) 2015 hashedin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var digit: UILabel!
    
    var expressionStack = Array<Double>();
    
    var isTyping = false
    var canOperandBeEntered = false
    var number = "0"
    var result = "0"
    
    var displayValue : Double {
        get{
            return NSNumberFormatter().numberFromString("\(number)")!.doubleValue
        }
        set{
//            digit.text = "\(newValue)"
//            isTyping = false
        }
    }
    
    @IBAction func displayDigit(sender: UIButton) {
        number = sender.currentTitle!

        if (isTyping) {
            digit.text =  digit.text! + number
        } else {
            isTyping = true
            digit.text =  number
        }
        canOperandBeEntered = true
    }
    
   
    func evaluateExpression(evalString: String) -> String {
        
        return "dfs"
    }
    //1+2*3/5
    
    @IBAction func calculate(sender: UIButton) {
        let operand = sender.currentTitle!

        println("operand=\(operand)")

        if (canOperandBeEntered) {
            digit.text =  digit.text! + operand
        }

        println("stack = \(expressionStack)")
        canOperandBeEntered = false
    }
    
    @IBAction func displayResult(sender: UIButton) {
        let expn = NSExpression(format:digit.text!)
        var temp = expn.expressionValueWithObject(nil, context: nil) as! Double
        println("\(temp)")
    }
    
    @IBAction func clearScreen(sender: UIButton) {
        digit.text = "0"
        let expn = NSExpression(format:"3+3")
        println(expn.expressionValueWithObject(nil, context: nil))

    }
}

