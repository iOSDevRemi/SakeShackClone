//
//  FirabaseUtiles.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import Foundation
import FirebaseAuth
import SwiftUI




extension Auth {
//    func handleFireAuthError(error: Error) {
//        if let errorCode = AuthErrorCode(rawValue: error._code){
//            let alert = UIAlertController(title: "Error", message: errorCode.errorMessage, preferredStyle: .alert)
//            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alert.addAction(okAction)
//            vc.present(alert, animated: true, completion: nil)
            
//        }
//
//    }
}
    



extension AuthErrorCode {
    var errorMessage: String {
        switch self {
        case .emailAlreadyInUse:
            return "The email is already in use with an other account"
        case .userNotFound:
            return "Account not found for the specified user. Please check & try again"
        case .userDisabled:
            return "Your account has been disable.Please check & try again"
        case .invalidEmail, .invalidSender, .invalidRecipientEmail:
            return "Please enter a valid email"
        case .networkError:
            return "Network error. Please check & try again"
        case .weakPassword:
            return "The password must be 6 characters long or more"
        case .wrongPassword:
            return "Please check & try again or use 'Forgot password' to reset your password"
            
        default:
            return "Sorry, something went wrong"
        }
    }
    
}
