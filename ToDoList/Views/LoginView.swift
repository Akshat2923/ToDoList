//
//  LoginView.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/15/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Login", subtitle: "get things done", angle: 15, backgroundColor: .orange)
                
                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                        
                    }
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    TLButton(title: "Login", backgroundColor: .blue){
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                //Create acc
                VStack {
                    Text("New?")
                    NavigationLink("Create An Account",
                        destination: RegisterView())
                    .padding(.bottom, 50)
                }
                
                Spacer()
            }
        }
       
    }
}

#Preview {
    LoginView()
}
