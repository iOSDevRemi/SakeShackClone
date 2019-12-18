//
//  WelcomeBottomView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct WelcomeBottomView: View {
    var body: some View {
        VStack{
            HStack{
                VStack {
                    Text("Choose a Shack")
                        .font(.title)
                        .fontWeight(.heavy)
                        .font(.system(size: 20))
                        .foregroundColor(.primary)
                    
                    Text("Start by choosing a location")
                    .foregroundColor(.secondary)
                    
                }
                Spacer()
                
                Button(action: {
                    print("Start")
                }) {
                    ZStack {
                        Capsule()
                            .foregroundColor(.green)
                            .frame(width: 100, height: 50)
                        
                        Text("Start")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                            .foregroundColor(.primary)
                    }
                }
            }.padding()
                
            
            WelcomeBottomButtonView()
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(width: UIScreen.main.bounds.width, height: 240)
        .background(Color.init(.secondarySystemBackground))
        .cornerRadius(18)
        
        
    }
}

struct WelcomeBottomView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomView()
    }
}
