//
//  HeaderView.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var subtitle: String
    var rotationAngle: Double
    var headerBackgroundColor: Color
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(headerBackgroundColor)
                .rotationEffect(Angle(degrees: rotationAngle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title",
               subtitle: "Subtitle",
               rotationAngle: 15,
               headerBackgroundColor: Color.blue)
}
