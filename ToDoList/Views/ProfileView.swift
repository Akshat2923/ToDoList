//
//  ProfileView.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/15/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                //avatar
                if let user = viewModel.user{
                    profile(user: user)
                } else {
                    Text("Loading...")
                }
                
            }
            .navigationTitle("Profile")
            
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View{
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        //info: name, email, member since
        VStack(alignment: .leading) {
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
                
            }
            .padding()
            HStack{
                Text("Email: ")
                    .bold()
                Text(user.email)
                
            }
            .padding()
            HStack{
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                
            }
            .padding()
        }
        
        
        Button("Logout"){
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        Spacer()
        
    }
}

#Preview {
    ProfileView()
}
