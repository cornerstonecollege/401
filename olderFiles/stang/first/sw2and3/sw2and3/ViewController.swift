//
//  ViewController.swift
//  sw2and3
//
//  Created by SG on 2016-09-30.
//  Copyright © 2016 SG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var roles: [String: String] = [
        
        "id 1": "Director",
        "id 2": "Cordinator",
        "id 3": "Teacher",
        "id 4": "Secretary"
    ]
    
    var locations: [String: String] = [
        "id 1":"location: Vancouver",
        "id 2": "location: Richmond"
    ]

    @IBOutlet weak var rolesTextField: UITextView!
    @IBOutlet weak var locationTextField: UITextView!
    @IBAction func rolesBtn(sender: AnyObject) {
        rolesTextField = roles
    }
    @IBAction func locationBtn(sender: AnyObject) {
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

