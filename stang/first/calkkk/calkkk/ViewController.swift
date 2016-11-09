//
//  ViewController.swift
//  calkkk
//
//  Created by SG on 2016-09-29.
//  Copyright © 2016 SG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcDisplay: UITextField!
    
    @IBAction func pPlus(sender: AnyObject) {
        
        
    }
    @IBAction func clear(sender: AnyObject) {
        calcDisplay.text = "0"

    }
    
    @IBAction func pOne(sender: AnyObject) {
        calcDisplay.text = "1"
    }
    
    @IBAction func pTwo(sender: AnyObject) {
        calcDisplay.text = "2"
    }
    @IBAction func pThree(sender: AnyObject) {
        calcDisplay.text = "3"
    }
    
    @IBAction func pFour(sender: AnyObject) {
        calcDisplay.text = "4"

    }
    
    @IBAction func pFive(sender: AnyObject) {
        calcDisplay.text = "5"

    }
    
    @IBAction func pSix(sender: AnyObject) {
        calcDisplay.text = "6"

    }
    
    @IBAction func pSeven(sender: AnyObject) {
        calcDisplay.text = "7"

    }
    
    @IBAction func pEight(sender: AnyObject) {
        calcDisplay.text = "8"

    }
    
    @IBAction func pNine(sender: AnyObject) {
        calcDisplay.text = "9"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcDisplay.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

