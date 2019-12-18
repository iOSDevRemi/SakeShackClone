//
//  LastNameTextFieldView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct LastNameTextFieldView: View {
    
    @Binding var lastName: String
    
    var body: some View {
        HStack {
            TextField("Last name", text: $lastName)
                .keyboardType(.namePhonePad)
                .padding()
                .background(Color.init(.secondarySystemBackground))
                .cornerRadius(25)
        }.padding()
    }
}

//struct LastNameTextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        LastNameTextFieldView()
//    }
//}
