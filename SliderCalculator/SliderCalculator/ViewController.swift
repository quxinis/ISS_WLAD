//
//  ViewController.swift
//  SliderCalculator
//
//  Created by student on 16/4/16.
//  Copyright © 2016 ISS-SE24-MWAD. All rights reserved.
//

import UIKit



class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var textFieldPrincipal: UITextField!
    @IBOutlet weak var sliderNumberOfYears: UISlider!
    @IBOutlet weak var textFieldInterestRate: UITextField!
    @IBOutlet weak var sliderInterestRate: UISlider!
    @IBOutlet weak var labelAmount: UILabel!
    @IBOutlet weak var textFieldNumberOfYears: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textFieldPrincipal.text = "10000"
        textFieldNumberOfYears.text = "10"
        sliderNumberOfYears.value = 10
        textFieldInterestRate.text = "1"
        sliderInterestRate.value = 1
        
        textFieldPrincipal.delegate = self
        textFieldNumberOfYears.delegate = self
        textFieldInterestRate.delegate = self
        
        
    }
    
    @IBAction func sliderNumberOfYearsChanged(sender: AnyObject) {
        let valueNumberOFYears:Int = Int(sliderNumberOfYears.value);
        textFieldNumberOfYears.text = String(valueNumberOFYears);
        self.displayAmount(sender)
    }
    
    
    @IBAction func sliderInterestRateChanged(sender: AnyObject) {
        let valueInterestRate : Float = sliderInterestRate.value
        textFieldInterestRate.text = String(valueInterestRate)
        self.displayAmount(sender)
    }
    
    
    @IBAction func displayAmount(sender: AnyObject) {
        let principalAmount : Int = Int(textFieldPrincipal.text!)!
        let numberOfYears:Int = Int(textFieldNumberOfYears.text!)!
        let interestRate:Float = NSString(string:textFieldInterestRate.text!).floatValue/100
        let finalAmount = Double(principalAmount)*pow(Double(1+interestRate), Double(numberOfYears))
            labelAmount.text=NSString(format: "%.2f",finalAmount) as String
        
        
    }
    func textFieldDidEndEditing(textField: UITextField) {
        self.displayAmount(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

