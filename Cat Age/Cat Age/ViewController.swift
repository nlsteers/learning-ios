//
//  ViewController.swift
//  Cat Age
//
//  Created by Nathaniel Steers on 13/10/2015.
//  Copyright © 2015 nlsteers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catAge: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBAction func submitAge(sender: AnyObject) {
        print("button pressed")
        
        var age = Int(textField1.text!)!
        age = age * 7
        
        label1.hidden = false
        catAge.text = String(age)
        label2.hidden = false
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello World")
        
        label1.hidden = true
        label2.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

