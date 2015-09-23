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
        if !peopleTextField.text.isEmpty {
            if let people = peopleTextField.text.toInt() {
                var poundTurkey = turkeyPoundToBuy(people)
                sizeTextField.text = "\(poundTurkey) lbs"
                var thaw = thawTime(poundTurkey)
                thawTextField.text = "\(thaw) hours"
                let (h,m,s) = cookTime(poundTurkey)
                cookTextField.text = "\(h):\(m) Hours"
            }
        }
    }

}

func turkeyPoundToBuy(people: Int) -> Double{
    return Double(people) * 1.5
}

func thawTime(pounds: Double) -> Double {
    return (pounds/4) * 24
}

func cookTime(pounds: Double) -> (Int, Int, Int) {
    var seconds = Int(pounds * 15)*60
    return (seconds / 3600, (seconds%3600) / 60, (seconds%3600)%60)
}