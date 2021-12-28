//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by christodoulos on 9/7/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import UIKit
class ConversionViewController:  UIViewController, UITextFieldDelegate {
    /*override func viewDidLoad() {
     super.viewDidLoad()
     
     let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
     let firstView = UIView(frame: firstFrame)
     firstView.backgroundColor = UIColor.blue
     view.addSubview(firstView)
     
     let secondFrame = CGRect(x:20, y: 30, width: 50, height: 50)
     let secondView = UIView(frame: secondFrame)
     secondView.backgroundColor = UIColor.green
     firstView.addSubview(secondView)
     }*/
    @IBOutlet var celsiusLabel: UILabel!
    var fahrenheitValue: Measurement<UnitTemperature>?{
        didSet{
            updateCelsiusLabel()
        }
    }
    /*var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }*/
    var celsiusValue: Measurement<UnitTemperature>?{
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        }else{
            return nil
        }
    }
    @IBOutlet var textField: UITextField!
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField){
        //celsiusLabel.text = textField.text
       /* if let text = textField.text, !text.isEmpty{
            celsiusLabel.text = text
        }else{
            celsiusLabel.text = "???"
        }*/
        if let text = textField.text, let value = Double(text){
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        }else{
            fahrenheitValue = nil
        }
    }
    @IBAction func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
   func updateCelsiusLabel(){
        if let celsiusValue = celsiusValue{
            //celsiusLabel.text = "\(celsiusValue.value)"
            celsiusLabel.text = numberFormatter.string(from: NSNumber (value: celsiusValue.value))
        }else{
            celsiusLabel.text = "???"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCelsiusLabel()
    }
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        //print( "Current text: \(textField.text)")
        //print("Replacement text: \(string)")
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        if existingTextHasDecimalSeparator != nil, replacementTextHasDecimalSeparator != nil {
            return false
        }else{
            return true
        }
    }
}
