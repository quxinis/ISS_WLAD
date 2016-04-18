//
//  LoginModel.swift
//  workshop2
//
//  Created by student on 10/4/16.
//  Copyright © 2016 student. All rights reserved.
//

import Foundation

class LoginModel{
    
    func verifyPassword(userID:String, password:String) -> Bool {
        if(userID==password){
            return true
        }else{
            return false
        }
    }
    
}
