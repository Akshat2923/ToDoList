//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/15/24.
//

import Foundation
import FirebaseFirestore

//all of todolist view
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    
    /// Delete todo list item
    /// - Parameter id: Item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}
