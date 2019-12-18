//
//  MenuView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 18/12/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
           TopMenuView()
            
            ScrollView {
                ListMenuView()
                    
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
