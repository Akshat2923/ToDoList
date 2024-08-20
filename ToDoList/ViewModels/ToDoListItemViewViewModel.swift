//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/15/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
//single todo list view
class ToDoListItemViewViewModel: ObservableObject {
    init(){}
    
    func toggleIsDone(item: ToDoListItem){
        //create copy bc immutable
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
