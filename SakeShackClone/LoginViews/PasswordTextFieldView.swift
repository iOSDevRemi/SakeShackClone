//
//  PasswordTextFieldView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct PasswordTextFieldView: View {
    
   @Binding var password: String
    @Binding var confirmPassword: String
    
    
    var body: some View {
        VStack {
            HStack {
                SecureField("Create password", text: $password)
//               .keyboardType(.emailAddress)
               .padding()
               .background(Color.init(.secondarySystemBackground))
               .cornerRadius(25)
                
                if password.isEmpty {
                    Image(systemName: "checkmark.square.fill")
                    .font(.title)
                    .foregroundColor(.secondary)
  
                }else if password == confirmPassword {
                    Image(systemName: "checkmark.square.fill")
                        .font(.title)
                        .foregroundColor(.green)
                }else if password != confirmPassword {
                    Image(systemName: "checkmark.square.fill")
                        .font(.title)
                        .foregroundColor(.red)
                }
                
                
               
                
            }
            
            HStack {
                SecureField("Confirm password", text: $confirmPassword)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.init(.secondarySystemBackground))
                    .cornerRadius(25)
                
                if confirmPassword.isEmpty {
                    Image(systemName: "checkmark.square.fill")
                        .font(.title)
                        .foregroundColor(.secondary)
                }else if confirmPassword == password {
                    Image(systemName: "checkmark.square.fill")
                        .font(.title)
                        .foregroundColor(.green)
                }else if confirmPassword != password {
                    Image(systemName: "checkmark.square.fill")
                        .font(.title)
                        .foregroundColor(.red)
                }
                
                
            }
            
        }.padding()
    }
}

//struct PasswordTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        PasswordTextFieldView()
//    }
//}
