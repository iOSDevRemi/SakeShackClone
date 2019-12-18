//
//  Users.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI
import FirebaseFirestore
import Combine


struct User {
    var id: String
    var email: String
    var username: String
    var lastName: String
    var phoneNum: String
    var stripeId: String
    let timeStamp: Timestamp
    
    
    init(id: String = "",
         email: String = "",
         username: String = "",
         phoneNum: String = "",
         lastName: String = "",
         timeStamp: Timestamp = Timestamp(),
         stripeId: String = "") {
        
        self.id = id
        self.email = email
        self.username = username
        self.phoneNum = phoneNum
        self.lastName = lastName
        self.stripeId = stripeId
        self.timeStamp = timeStamp
        
    }
    
    init(data: [String: Any]) {
        id = data["id"] as? String ?? ""
        email = data["email"] as? String ?? ""
        username = data["usernmae"] as? String ?? ""
        phoneNum = data["phoneNum"] as? String ?? ""
        lastName = data["lastName"] as? String ?? ""
        stripeId = data["stripeId"] as? String ?? ""
        self.timeStamp = data["timeStamp"] as? Timestamp ?? Timestamp()
    }
    
    static func modelToData(user: User) ->  [String: Any] {
        
        let data : [String: Any] = [
            
            "id" : user.id,
            "email" : user.email,
            "username" : user.username,
            "phoneNum" : user.phoneNum,
            "lastName" : user.lastName,
            "stripeId" : user.stripeId,
            "timeStamp": user.timeStamp
            
        ]
        
        return data
    }
    
}

