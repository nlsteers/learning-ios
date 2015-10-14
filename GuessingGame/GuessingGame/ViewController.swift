//
//  ViewController.swift
//  GuessingGame
//
//  Created by Nathaniel Steers on 14/10/2015.
//  Copyright © 2015 nlsteers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wellDone: UILabel!
    @IBOutlet weak var betterLuckNextTime: UILabel!
    @IBOutlet weak var computerNumber: UILabel!
    
    @IBOutlet weak var numberEntry: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        
        wellDone.hidden = true
        betterLuckNextTime.hidden = true

        
        let rNum = Int(arc4random_uniform(5) + 1)
        
        if numberEntry.text == ""{
            computerNumber.text = "Please enter a number"
            
        } else if Int(numberEntry.text!) > 5{
            computerNumber.text = "Please enter a number between 1 and 5"

            
        } else if Int(numberEntry.text!) == rNum{
            computerNumber.text = "My number was: \(rNum)"
            wellDone.hidden = false
            
        } else if Int(numberEntry.text!) != rNum {
            computerNumber.text = "My number was: \(rNum)"
            betterLuckNextTime.hidden = false
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        wellDone.hidden = true
        betterLuckNextTime.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

