//
//  LoginView.swift
//  SakeShackClone
//
//  Created by daniel d4 on 19/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct LoginView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backButton: some View {
    Button(action: {
             self.presentationMode.wrappedValue.dismiss()
         }) {
             ZStack {
                 Circle()
                     .offset(x: 2)
                     .stroke(lineWidth: 1)
                     .foregroundColor(.init(Color.init(.label)))

                 Image(systemName: "chevron.left")
                     .padding()
                     .font(.headline)
                    .foregroundColor(.init(Color.init(.label)))

             }
         }
    }
    var alert: Alert {
        Alert(title: Text("Error"), message: Text("please make your information is correct"), dismissButton: .default(Text("Ok")))
    }
    
    @State private var showAlert = false
    @State private var email = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var phone = ""
    @State private var steps = 0
    
    
    var body: some View {
        NavigationView {
            VStack {
               
               if steps == 0 {
                GetTheGoodsText()
                LoginTextFieldView(email: $email)
                if email.isEmpty {
                    LoginButtonsView()
                } else {
                    ContinueButtonView(steps: $steps)
                }
                
               }
                
               if steps == 1 {
                GetTheGoodsText()
                FirstNameTextFieldView(firstName: $firstName, lastName: $lastName)
                if  lastName.isNotEmpty {
                    ContinueButtonView(steps: $steps)
                }
                
                }
                
                if steps == 2 {
                    SetPasswordTextView()
                    PasswordTextFieldView(password: $password, confirmPassword: $confirmPassword)
                    RulesTextView()
                    
                    if password.isEmpty || confirmPassword.isEmpty {
                        
                    }else {
                        if password == confirmPassword {
                            ContinueButtonView(steps: $steps)
                        }
                    }
                    

                    
                }
                
                if steps == 3 {
                    KeppTextView()
                    PhoneNumberTextFieldView(phone: $phone)
                    SignUpToggleView()
                    
                    if phone.isNotEmpty {
                        Button(action: {
                            
                            self.registerUserToFirebase()
                            self.alert(isPresented: self.$showAlert) {
                                Alert(title: Text("hhhhh"), message: Text("jj"), dismissButton: .default(Text("Ok")))
                            }
                            
                        }) {
                            Text("Register")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 24, height: 60)
                        .background(Color.green)
                        .cornerRadius(18)
                    }
                    
                   
                    
                }
                
               Spacer()
            }
            
        }
      .navigationBarBackButtonHidden(true)
    .navigationBarItems(leading: backButton)

    }
    
    func registerUserToFirebase() {
 
        guard let user = Auth.auth().currentUser else {
            return

        }

    let credential = EmailAuthProvider.credential(withEmail: email, password: password)
        user.linkAndRetrieveData(with: credential) { (result, error) in
            if let error = error {
                self.showAlert = true
                

                debugPrint("oups: \(error.localizedDescription)")
                return
            }
        
        
        
        
            let changeRequest = user.createProfileChangeRequest()
            changeRequest.displayName = self.firstName
            changeRequest.commitChanges(completion: { (error) in
                if let error = error {
                    debugPrint(error.localizedDescription)
                }
            })
            
            guard let firUser = result?.user else {return}
            let artUser = User.init(id: firUser.uid, email: self.email, username: self.firstName, phoneNum: self.phone, lastName: self.lastName, timeStamp: Timestamp(), stripeId: "")

            // upload to fire store
            self.createFirestoreUser(user: artUser)
        }
    
}
    
    
    
    func createFirestoreUser(user: User) {

        // step1: Create document reference
        let newUserRef = Firestore.firestore().collection("users").document(user.id)
        // step2: create model data
        let data = User.modelToData(user: user)
        // step3: Upload to firestore
        newUserRef.setData(data) { (error) in
            if let error = error {
               
                debugPrint("Error signing in: \(error.localizedDescription)")
            }
        }
    }
    
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
//UIAlertController(title: "Error", message: errorCode.errorMessage, preferredStyle: .alert)
