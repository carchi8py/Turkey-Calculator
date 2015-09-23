//
//  ViewController.swift
//  Turkey Calculator
//
//  Created by Chris Archibald on 9/22/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peopleTextField: UITextField!
    @IBOutlet weak var sizeTextField: UITextField!
    @IBOutlet weak var thawTextField: UITextField!
    @IBOutlet weak var cookTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sizeTextField.backgroundColor = UIColor.lightGrayColor()
        thawTextField.backgroundColor = UIColor.lightGrayColor()
        cookTextField.backgroundColor = UIColor.lightGrayColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculatePressed(sender: AnyObject) {
    }

}

