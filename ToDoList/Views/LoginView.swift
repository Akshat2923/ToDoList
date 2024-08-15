//
//  LoginView.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/15/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView()
                
                //Login Form
                Form{
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        //attemptlogin
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
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
