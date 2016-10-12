//
//  ViewController.swift
//  fclass
//
//  Created by SG on 2016-10-11.
//  Copyright © 2016 SG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    
    //tworzenie zmiennej
    var num = 0
    
    //tworzenie obiektu wyswietlajacego
    @IBOutlet weak var screen: UILabel!
    
    //tworzenie funkcji losujacej numer
    func getRandomColor() -> UIColor{
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
  
    
   
    
    // clicklistener
    @IBAction func click(sender: AnyObject) {
        //set up view with random color function
        self.view.backgroundColor = getRandomColor()
        
        //conwerttowanie stringu z screen do Int
        num = Int(screen.text!)!
        
        //getText i dodanie +1
        self.screen.text = String(num+1)
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

