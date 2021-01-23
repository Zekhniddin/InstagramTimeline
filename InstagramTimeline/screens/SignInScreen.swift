//
//  SignInScreen.swift
//  InstagramTimeline
//
//  Created by Зехниддин on 21/01/21.
//

import SwiftUI

struct SignInScreen: View {
    @EnvironmentObject var status: Status
    
    @State private var showingSignUpScreen = false
    
    @State private var userID = ""
    @State private var userPW = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("im_user")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .cornerRadius(60)
                .padding(.bottom)
            
            TextField("User ID", text: $userID)
                .modifier(FieldsStyle())
            
            SecureField("User PW", text: $userPW)
                .modifier(FieldsStyle())
            
            Button(action: {
                UserDefaults.standard.setValue("data", forKey: "key_data")
                self.status.listen()
            }) {
                Text("Sign In")
                    .modifier(ButtonsStyle())
            }
            
            Spacer()
            
            HStack(spacing: 8) {
                Text("Don't have an account?")
                
                Button(action: {
                    self.showingSignUpScreen.toggle()
                }) {
                    Text("Sign Up")
                        .fontWeight(.medium)
                }
            }
            .foregroundColor(Color.init(.systemBlue))
            .font(Font.system(size: 18))
        }
        .sheet(isPresented: $showingSignUpScreen) {
            SignUpScreen()
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}

struct FieldsStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.init(.systemGray5))
            .cornerRadius(30)
            .padding(.horizontal)
    }
}

struct ButtonsStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.red)
            .cornerRadius(30)
            .padding(.horizontal)
            .font(.title3)
    }
}
