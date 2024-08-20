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
                
            }
            .navigationTitle("Profile")
            
        }
    }
}

#Preview {
    ProfileView()
}
