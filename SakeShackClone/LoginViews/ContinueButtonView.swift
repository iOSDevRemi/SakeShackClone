//
//  ContinueButtonView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 19/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct ContinueButtonView: View {
    
    @Binding var steps: Int

    
    var body: some View {
        Button(action: {
            self.steps += 1
        }) {
            Text("Continue")
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 24, height: 50)
        .background(Color.green)
        .cornerRadius(18)
        
    }
}

//struct ContinueButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContinueButtonView()
//    }
//}
