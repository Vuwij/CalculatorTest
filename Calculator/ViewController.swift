//
//  ViewController.swift
//  Calculator
//
//  Created by Jason Wang on 2016-08-20.
//  Copyright © 2016 University of Toronto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userInTheMiddleOfTyping: Bool = false
    
    @IBAction func keyPressed(sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userInTheMiddleOfTyping{
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(sender: UIButton) {
        userInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            if mathematicalSymbol == "π"{
                display.text = String(M_PI) //M_PI
                
            }
        }
    }
}

