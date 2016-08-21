//
//  ViewController.swift
//  Calculator
//
//  Created by Jason Wang on 2016-08-20.
//  Copyright © 2016 University of Toronto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func keyPressed(sender: UIButton) {
        let digit = sender.currentTitle!
        print("Touched \(digit) digit")
    }
}

