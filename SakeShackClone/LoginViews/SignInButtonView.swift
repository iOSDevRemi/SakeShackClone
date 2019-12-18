//
//  SignInButtonView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct SignInButtonView: View {
    var body: some View {
         Button(action: {
                  
               }) {
                   Text("Register")
                       .fontWeight(.heavy)
                       .foregroundColor(.white)
               }
               .padding()
               .frame(width: UIScreen.main.bounds.width - 24, height: 50)
               .background(Color.green)
               .cornerRadius(18)
    }
}

struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView()
    }
}
