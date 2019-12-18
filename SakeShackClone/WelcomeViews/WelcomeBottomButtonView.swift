//
//  WelcomeBottomButtonView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct WelcomeBottomButtonView: View {
    
    let buttons = [ButtonWithImage(image: "clock", label: "History"), ButtonWithImage(image: "bag", label: "Menu")]
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                ForEach(self.buttons, id: \.self) { button in
                    Button(action: {
                        print(button.label)
                    }) {
                        Image(systemName: button.image)
                            .font(.title)
                            .foregroundColor(.green)
                        
                        Text(button.label)
                            .fontWeight(.heavy)
                            .foregroundColor(.primary)
                    }
                    .frame(width: geometry.size.width / 2.2, height: 60)
                    .background(Color.init(.systemBackground))
                    .cornerRadius(18)
                    .shadow(color: Color(.label).opacity(0.2), radius: 4, x: 0, y: 0)
                    .padding(.horizontal)
                }
            }
        }
        .frame(height: 60)
        .padding()
    }
}

struct WelcomeBottomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomButtonView()
    }
}


struct ButtonWithImage: Hashable {
    let image: String
    let label: String
}
