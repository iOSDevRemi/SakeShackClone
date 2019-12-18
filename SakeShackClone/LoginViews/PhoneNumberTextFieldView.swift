//
//  PhoneNumberTextFieldView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct PhoneNumberTextFieldView: View {
    
    @Binding var phone: String
    
    var body: some View {
        HStack {
            TextField("Phone number", text: $phone)
                .keyboardType(.emailAddress)
                .padding()
                .background(Color.init(.secondarySystemBackground))
                .cornerRadius(25)
        }.padding()
    }
}

//struct PhoneNumberTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhoneNumberTextFieldView()
//    }
//}
