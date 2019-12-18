//
//  GetTheGoodsText.swift
//  SakeShackClone
//
//  Created by daniel d4 on 19/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct GetTheGoodsText: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Get the goods!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom)
                
                Text("Sign in or create an account.")
                    .foregroundColor(.gray)
                
            }
            Spacer()
            
        }.padding()
    }
}

struct GetTheGoodsText_Previews: PreviewProvider {
    static var previews: some View {
        GetTheGoodsText()
    }
}
