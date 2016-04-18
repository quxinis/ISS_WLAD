//
//  ViewController.swift
//  PickerView
//
//  Created by student on 16/4/16.
//  Copyright © 2016 ISS-SE24-MWAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var textFieldCourseCode: UITextField!
    var courses:Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        courses = ["OOAD","JAVA","PMIS"]
        let pickerView : UIPickerView = UIPickerView()
        pickerView.delegate=self
        pickerView.dataSource = self
        textFieldCourseCode.inputView = pickerView
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses!.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses![row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFieldCourseCode.text = courses![row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

