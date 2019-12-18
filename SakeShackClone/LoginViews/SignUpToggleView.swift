//
//  SignUpToggleView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct SignUpToggleView: View {
    
    @State var toggled = false
    
    var body: some View {
     
            Toggle(isOn: $toggled) {
                Text("Sing up for promotional emails")
                               
        }.padding()
        
    }
}

struct SignUpToggleView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpToggleView()
    }
}
