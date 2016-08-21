//
//  ViewController.swift
//  Calculator
//
//  Created by Jason Wang on 2016-08-20.
//  Copyright © 2016 University of Toronto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var display: UILabel!
    
    private var userInTheMiddleOfTyping: Bool = false
    
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
    
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction private func performOperation(sender: UIButton) {
        if userInTheMiddleOfTyping{
            brain.setOperand(displayValue)
            userInTheMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        displayValue = brain.result
    }
}

