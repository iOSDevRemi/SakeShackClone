//
//  BackgroundView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Image("jar-1610840_1280")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
