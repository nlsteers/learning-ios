//
//  ViewController.swift
//  PrimeChecker
//
//  Created by Nathaniel Steers on 14/10/2015.
//  Copyright © 2015 nlsteers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var isPrime: UILabel!
    @IBOutlet weak var primeInput: UITextField!
    @IBAction func checkButton(sender: AnyObject) {
        
        
            
            if let primeCheck:Int = Int(primeInput.text!){
        
                var prime = true
                
                if primeCheck < 2 {
                    prime = false
                }
                
                for var i = 2; i < primeCheck; ++i{
                    if primeCheck % i == 0 {
                        prime = false
                        break
                    }
                }
                
                if prime == false {
                    isPrime.textColor = UIColor.redColor()
                    isPrime.text = "\(primeCheck) is not Prime."
                }
                
                if prime == true {
                    isPrime.textColor = UIColor.blueColor()
                    isPrime.text = "\(primeCheck) is Prime!"
                }
            } else {
                isPrime.text = "Please enter a number."
            }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

