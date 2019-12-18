//
//  LoginButtonsView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 19/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct LoginButtonsView: View {
    
    let buttons = [ButtonWithImage(image: "person.crop.circle", label: "Contine With Facebook"), ButtonWithImage(image: "person.crop.circle", label: "Continue with Google")]
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("or")
                
                ForEach(self.buttons, id: \.self) { button in
                    Button(action: {
                        print(button.label)
                    }) {
                        Text(button.label)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Image(systemName: button.image)
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    .frame(width: geometry.size.width / 1, height: 50)
                    .background(Color.white)
                    .cornerRadius(18)
                    .shadow(color: Color.init(.secondaryLabel).opacity(0.3), radius: 2, x: 0, y: 0)
                    .padding(.vertical, 4)
                }
            }
        }
        .frame(height: 128)
        .padding()
    }
}

struct LoginButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonsView()
    }
}


