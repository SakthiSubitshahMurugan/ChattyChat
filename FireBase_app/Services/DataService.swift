//
//  DataService.swift
//  FireBase_app
//
//  Created by Sakhti Subitshah Murugan on 10/30/17.
//  Copyright © 2017 Sakhti Subitshah Murugan. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()
class DataService{
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USER = DB_BASE.child("user")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED  = DB_BASE.child("feed")
    
    var REF_BASE : DatabaseReference{
        return _REF_BASE
    }
    var REF_USER : DatabaseReference{
        return _REF_USER
    }
    var REF_GROUPS : DatabaseReference{
        return _REF_GROUPS
    }
    var REF_FEED : DatabaseReference{
        return _REF_FEED
    }
    
    func createDBUser(uid:String,userData:Dictionary<String,Any>){
        REF_USER.child(uid).updateChildValues(userData)
    }
    
    
}
