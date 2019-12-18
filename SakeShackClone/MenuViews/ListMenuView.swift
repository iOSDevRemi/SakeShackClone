//
//  ListMenuView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 18/12/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct ListMenuView: View {
    
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 18)
                    .foregroundColor(Color.init(.secondarySystemBackground))
                VStack {
                    Image("Burger-1")
                        .resizable()
                        .frame( height: 300)
                        .cornerRadius(18)
                        
                    
                    HStack {
                        Text("Shack Stack")
                            .font(.largeTitle)
                            .bold()
                            .padding(.leading)
                        Spacer()
                    }
                    
                     Text("Cheese burger and a Shroom Burger topped with lettuce, tomato and ShackSauce")
                        .font(.system(size: 18))
                        .lineLimit(nil)
                        .frame(height: 80)
                    
                    HStack {
                        Text("$10.59")
                        .bold()
                        Spacer(minLength: 25)
                        Text("800 cal.")
                    }.padding()
                    
                }
                    
            }.padding()
            .frame(height: 500)
        
    }
}

struct ListMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ListMenuView()
    }
}
