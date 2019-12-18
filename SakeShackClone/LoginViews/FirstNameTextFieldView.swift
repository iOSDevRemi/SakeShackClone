//
//  FirstNameTextFieldView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct FirstNameTextFieldView: View {
    
     @Binding var firstName: String
    @Binding var lastName: String

    
    var body: some View {
        ZStack {
            VStack {
                TextField("First name", text: $firstName)
                      .keyboardType(.namePhonePad)
                        .padding()
                        .background(Color.init(.secondarySystemBackground))
                    .cornerRadius(25)
                
                TextField("Last name", text: $lastName)
                        .keyboardType(.namePhonePad)
                        .padding()
                        .background(Color.init(.secondarySystemBackground))
                        .cornerRadius(25)
            }
            
           
        }.padding()
 
    }
}

//struct FirstNameTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        FirstNameTextFieldView(firstName: $firstName)
//    }
//}
