//
//  TabBarButton.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/18/20.
//

import SwiftUI

struct TabBarButton: View {
    
    var title: String
    var image: String
    @Binding var selected: String
    
    var body: some View {
        
        Button(action:{
            withAnimation(.spring()){selected = title}
        }){
            
            HStack(spacing:0){
                
                Image(systemName: "\(image)")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("SecondaryColor"))
                    .padding(.horizontal,5)
                  
                if selected == title{
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryColor"))
                }
                
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color("SecondaryColor").opacity(selected == title ? 0.3 : 0))
            .clipShape(Capsule())
        }
        
    }
}

