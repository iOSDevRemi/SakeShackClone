//
//  KeppTextView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct KeppTextView: View {
    var body: some View {
       HStack {
            VStack(alignment: .leading) {
                Text("Lets keep in touch")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom)
                
                Text("We will text you when your order's ready")
                    .foregroundColor(.gray)
                
            }
            Spacer()
            
        }.padding()
    }
}

struct KeppTextView_Previews: PreviewProvider {
    static var previews: some View {
        KeppTextView()
    }
}
