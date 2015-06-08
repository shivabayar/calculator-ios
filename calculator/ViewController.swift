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
    
    @IBAction func displayDigit(sender: UIButton) {
        let number = sender.currentTitle!
        
        println("button=\(number)")
        
        
        digit.text =  digit.text! + number
        
    }
    
}

