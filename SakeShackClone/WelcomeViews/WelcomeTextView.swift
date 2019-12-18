//
//  WelcomeTextView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct WelcomeTextView: View {
    var body: some View {
        VStack{
            Text("Sip our new\nCascara Shake!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.init(.systemBackground))
                .multilineTextAlignment(.center)
            
            Text("Our newest shake is sweet + fruity with\nnotes of cherry + red currany.")
                .foregroundColor(Color.init(.systemBackground))
                .multilineTextAlignment(.center)
            
        }
    }
}

struct WelcomeTextView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTextView()
            .background(Color.primary)
    }
}
