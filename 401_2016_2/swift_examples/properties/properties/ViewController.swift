//
//  ViewController.swift
//  properties
//
//  Created by Luiz on 2016-10-11.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var ssasa: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ddsds(_ sender: AnyObject) {
        self.count += 1
        self.ssasa.text = String(self.count)
        
    }

}

