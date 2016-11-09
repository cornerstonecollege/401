//
//  ViewController.swift
//  sw_ex_1
//
//  Created by SG on 2016-09-30.
//  Copyright © 2016 SG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textSender: UITextField!
    
    @IBOutlet weak var textReceiver: UILabel!
    
    
    @IBAction func btnTransformer(sender: AnyObject) {
        textReceiver.text = textSender.text
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

