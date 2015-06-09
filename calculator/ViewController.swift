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
    
    var isTyping = false
    var canOperandBeEntered = false
    
    @IBAction func displayDigit(sender: UIButton) {
        let number = sender.currentTitle!

        if (isTyping) {
            digit.text =  digit.text! + number
        } else {
            isTyping = true
            digit.text =  number
        }
        canOperandBeEntered = true
    }
    
    @IBAction func calculate(sender: UIButton) {
        let operand = sender.currentTitle!
        
        if(canOperandBeEntered) {
            if (isTyping) {
                digit.text =  digit.text! + operand
            } else {
                isTyping = true
                digit.text =  operand
            }
        }
        canOperandBeEntered = false
    }
    
    @IBAction func clearScreen(sender: UIButton) {
        digit.text = "0"
    }
}

