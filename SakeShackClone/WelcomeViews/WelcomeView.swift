//
//  ContentView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 08/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct WelcomeView: View {
    
    @State var isBottomViewOnScreen = false
    @State var isSignUpViewOnScreen = false
    @State var isMenuViewOnScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack {
                    MenuButtonView()
                        .offset(y: isMenuViewOnScreen ? 0 :-400)
                        .animation(.spring(dampingFraction: 0.8))
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                self.isMenuViewOnScreen.toggle()
                            }
                    }
                    Spacer()
                    WelcomeTextView()
                    Spacer()
                    NavigationLink(destination: LoginView()) {
                        SignInOrCreateButtonView()
                    }
                    .offset(y: isSignUpViewOnScreen ? 0 : 400)
                    .animation(.spring(dampingFraction: 0.6))
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                            self.isSignUpViewOnScreen.toggle()
                        }
                    }
                    
                    WelcomeBottomView()
                        .offset(y: isBottomViewOnScreen ? 0 : 400)
                        .animation(.spring(dampingFraction: 0.4))
                        .onAppear{
                            self.isBottomViewOnScreen.toggle()
                            self.setupAInitialAnonymousUser()
                            
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width)
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("", displayMode:  .inline)
            .navigationBarHidden(true)
        }
        
        
    }
    
    func setupAInitialAnonymousUser() {
           if Auth.auth().currentUser == nil {
               Auth.auth().signInAnonymously() { (authResult, error) in
                   if let error =  error {
                    print(error.localizedDescription)
                   }
                   // present alert or modal. Click OK then present the registration screen
                   
               }
               
           }else{
//                 UserService.getCurrentUser()
           }
       }
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
             WelcomeView()
            .previewDevice("iPhone 11 Pro")
            .environment(\.colorScheme, .dark)
            
            
            WelcomeView()
                .previewDevice("iPhone 11 Pro")
                .environment(\.colorScheme, .light)
        }
        
    }
}
