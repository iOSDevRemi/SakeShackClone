//
//  SetPasswordTextView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct SetPasswordTextView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
            Text("Set a Password")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom)
                
                
             

            }
            Spacer()
            
        }.padding()
    }
}

struct SetPasswordTextView_Previews: PreviewProvider {
    static var previews: some View {
        SetPasswordTextView()
    }
}
