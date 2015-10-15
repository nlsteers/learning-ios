//
//  ViewController.swift
//  EggTimer
//
//  Created by Nathaniel Steers on 15/10/2015.
//  Copyright © 2015 nlsteers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timerSecond = NSTimer()
    
    var timerTenth = NSTimer()
    
    var timeInSeconds = 0
    var timeInTenth = 0
    
    @IBOutlet weak var timerTenthView: UILabel!
    
    @IBOutlet weak var timerView: UILabel!
    
    
    @IBAction func startButton(sender: AnyObject) {
        
        start()
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        stop()
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        
        refresh()
    }

    
    func refresh(){
        timeInSeconds = 0
        timerView.text = String(timeInSeconds)

    }
    
    func result() {
        
        timeInSeconds++
        timerView.text = String(timeInSeconds)
        
       
    }
    
    func tenthResult() {
        
        timeInTenth++
        timerTenthView.text = String(timeInTenth)
        
        if timeInTenth == 10 {
            timeInTenth = 0
        }
        
        
    }
    
    
    func start(){
        
        if !timerSecond.valid {
        timerSecond = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        }
        
        if !timerTenth.valid {
            timerTenth = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("tenthResult"), userInfo: nil, repeats: true)
        }
        
    }
    
    func stop(){
        
        timerSecond.invalidate()
        timerTenth.invalidate()

    
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

