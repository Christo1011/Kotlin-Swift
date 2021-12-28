//
//  ViewController.swift
//  Buggy
//
//  Created by christodoulos on 9/20/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonTapped(_ sender: UIButton){
        //print("Called buttonTapped(_:)")
        print("Method: \(#function) file: \(#file) line: \(#line) called")
        //Log sender:
        //print("sender \(sender)")
        //Log the control state:
        //print("Is the control on? \(sender.isOn)")
        badMethod()
    }
    func badMethod(){
        let array = NSMutableArray()
        for i in 0..<10{
            array.insert(i, at: i)
        }
        // Go one step too far emptying the array (notice the range change):
        for _ in 0..<10{
            array.removeObject(at: 0)
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

