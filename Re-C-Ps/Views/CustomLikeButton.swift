//
//  CustomLikeButton.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 1/1/21.
//

import SwiftUI

struct CustomLikeButton: View {
    
    @Binding var liked: Bool
    
    var body: some View {
        
        Button(action: {
            liked.toggle()
        }) {
            HStack {
                Image(systemName: liked ? "heart.fill" : "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(.white))
                    .padding(10)
                    .background(Color(.black).opacity(0.7))
                    .cornerRadius(10)
            }
            .padding(.top,10)
        }
        
    }
}
