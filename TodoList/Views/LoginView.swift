//
//  LoginView.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Todo List",
                           subtitle: "Get things done!",
                           rotationAngle: 15,
                           headerBackgroundColor: Color.pink)
                
                // LoginForm
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CustomButton(title: "Log in", background: Color.blue) {
                        //ATTEMPT TO LOGIN
                    }

                }.offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New Around here?")
                    NavigationLink("Create Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
