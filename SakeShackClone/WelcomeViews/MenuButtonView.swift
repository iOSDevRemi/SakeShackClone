//
//  MenuButtonView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Menu button taped")
            }, label: {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .font(.system(size: 44))
                    .foregroundColor(Color.init(.label))
                
            })
            Spacer()
        }.padding()
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
            .background(Color.primary)
    }
}
