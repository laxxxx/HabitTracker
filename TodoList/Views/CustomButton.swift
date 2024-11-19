//
//  CustomButton.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Attempt login
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }.padding()
    }
}

#Preview {
    CustomButton(title: "Log in",
                 background: Color.blue) {
        //Action
    }
}
