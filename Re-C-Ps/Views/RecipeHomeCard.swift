//
//  RecipeHomeCard.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/19/20.
//

import SwiftUI

struct RecipeHomeCard: View {
    var recipe: Recipes
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12){
            
            HStack{
                
                Spacer(minLength: 0)
                
                Image(recipe.image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 130)
                    .cornerRadius(100)
                
            }
            
            Text(recipe.title)
                .font(.title3)
                .foregroundColor(.black)
            
            HStack(spacing:12){
                
                Label(title:{
                    Text(recipe.rating)
                        .font(.caption)
                        .foregroundColor(Color(.white))
                    
                }){
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(Color(.orange))
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(recipe.color.opacity(0.4))
                .cornerRadius(5)
                
                Text(recipe.type)
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(recipe.color.opacity(0.4))
                    .cornerRadius(5)
            }
            
            Text(recipe.detail)
                .foregroundColor(.gray)
                .lineLimit(8)
            
            HStack(spacing:0){
                
                ForEach(1...4, id: \.self){i in
                    
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        .offset(x: -CGFloat(i) * 8)
                    
                }
                
                Text("10 Likes")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.leading, -(4) * 6)
                
            }
            .padding(.bottom)
            
            HStack{
                Spacer(minLength: 0)
                
                Button(action:{}){
                    
                    Label(title:{
                        Text("Save")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black)
                    }){
                        Image(systemName: "suit.heart.fill")
                            .font(.body)
                            .foregroundColor(Color("SecondaryColor"))
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 10)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                }
            }
            
        }
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width / 2)
        .background(
            Color(.orange).opacity(0.2)
                .cornerRadius(25)
                .padding(.top, 55)
                .padding(.bottom, 15)
        )
        
    }
}


