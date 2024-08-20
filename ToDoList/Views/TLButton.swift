//
//  TLButton.swift
//  ToDoList
//
//  Created by Akshat  Saladi on 8/19/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    var body: some View {
        Button {
            //action on button pres
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    //passing dummy data
    TLButton(title: "Value", backgroundColor: .pink){
        
    }
}
