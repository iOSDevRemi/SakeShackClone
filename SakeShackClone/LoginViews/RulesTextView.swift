//
//  RulesTextView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 27/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct RulesTextView: View {
    var body: some View {
        VStack(alignment: .leading) {
        HStack{
            Image(systemName: "multiply.square")
                .foregroundColor(Color.init(.systemGray))
                
            
            Text("At least 8 characters")
           
            }
            HStack{
                Image(systemName: "multiply.square")
                    .foregroundColor(Color.init(.systemGray))
                
                Text("One number or special character")
            }
            HStack{
                Image(systemName: "multiply.square")
                    .foregroundColor(Color.init(.systemGray))
                
                Text("Must contain letters")
            }
        }.padding()
    }
}

struct RulesTextView_Previews: PreviewProvider {
    static var previews: some View {
        RulesTextView()
    }
}
