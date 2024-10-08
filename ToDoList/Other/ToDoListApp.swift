//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/5/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    } 
}
