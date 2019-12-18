//
//  SignInOrCreateButtonView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct SignInOrCreateButtonView: View {
    var body: some View {
        HStack {
            Image(systemName: "bag")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            VStack(alignment: .leading){
                Text("Let's get shacking'!")
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
                Text("Sign in or create an account.")
                    .foregroundColor(.secondary)
                
            }.padding(.horizontal)
            Spacer()
            
        }
        .padding()
        .background(Color.init(.systemBackground))
        .cornerRadius(18)
        .padding(.horizontal, 8)
    }
}

struct SignInOrCreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInOrCreateButtonView()
    }
}
