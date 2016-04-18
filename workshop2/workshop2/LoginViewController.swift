//
//  LoginViewController.swift
//  workshop2
//
//  Created by student on 9/4/16.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var password: UITextField!

    @IBAction func login(sender: AnyObject) {
        userID.resignFirstResponder()
        password.resignFirstResponder()
        
        let login:LoginModel = LoginModel()
        let result:Bool = login.verifyPassword(userID.text!, password: password.text!)
        if(!result){
            printMessage("Incorrect userID or password!")
        }else{
            printMessage("Welcome to the application!")
        }
        
    }
    
    func printMessage(name:String) {
        let alertPopUp:UIAlertController = UIAlertController(title: "Alert", message: name, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: {action -> Void in})
        alertPopUp.addAction(cancelAction)
        self.presentViewController(alertPopUp, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userID.delegate = self
        password.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        userID.resignFirstResponder()
        password.resignFirstResponder()
        return true
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
