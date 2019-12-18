//
//  LoginTextFieldView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 19/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct LoginTextFieldView: View {
    
    @Binding var email: String
    
    var body: some View {
        VStack {
            TextField("Enter your email", text: $email)
               
                .keyboardType(.emailAddress)
                .padding()
                .background(Color.init(.secondarySystemBackground))
                .cornerRadius(25)
        }.padding()
        
        
    }
}

//struct LoginTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginTextFieldView(email: $email)
//    }
//}
