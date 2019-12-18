//
//  TopMenuView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 18/12/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct TopMenuView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ZStack {
                    Circle()
                        .foregroundColor(Color.init(.secondarySystemBackground))
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: 1, y: 1)
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: -1, y: -1)
                    
                    VStack {
                        Image(systemName: "1.square")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                        
                    }.padding()
                    
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(Color.init(.secondarySystemBackground))
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: 1, y: 1)
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: -1, y: -1)
                    
                    VStack {
                        Image(systemName: "1.square")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                        
                    }.padding()
                    
                }
                ZStack {
                    Circle()
                        .foregroundColor(Color.init(.secondarySystemBackground))
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: 1, y: 1)
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: -1, y: -1)
                    
                    VStack {
                        Image(systemName: "1.square")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                        
                    }.padding()
                    
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(Color.init(.secondarySystemBackground))
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: 1, y: 1)
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: -1, y: -1)
                    
                    VStack {
                        Image(systemName: "1.square")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                        
                    }.padding()
                    
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(Color.init(.secondarySystemBackground))
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: 1, y: 1)
                        .shadow(color: Color.secondary.opacity(0.5), radius: 1, x: -1, y: -1)
                    
                    VStack {
                        Image(systemName: "1.square")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                        
                    }.padding()
                    
                }
                
                 
                
            }.padding()
               
        }
         .frame(height: 80)
    }
}

struct TopMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuView()
    }
}
