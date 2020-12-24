//
//  RecipeHomeCard.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/19/20.
//

import SwiftUI

struct RecipeHomeCard: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12){
            
            HStack{
                
                Spacer(minLength: 0)
                
                Image(recipe.image.load())
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
                    Text(recipe.spoonacularScore)
                        .font(.caption)
                        .foregroundColor(Color(.white))
                    
                }){
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(Color(.orange))
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color(.red).opacity(0.4))
                .cornerRadius(5)
                
                Text(recipe.healthScore)
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color(.red).opacity(0.4))
                    .cornerRadius(5)
            }
            
            Text(recipe.summary)
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
                
                Text("\(recipe.aggregateLikes)")
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
            Color("SecondaryColor").opacity(0.7)
                .cornerRadius(25)
                .padding(.top, 55)
                .padding(.bottom, 15)
                .shadow(color: .black, radius: 10, x: 5, y: 5)
                .shadow(color: .white, radius: 10, x: -5, y: -5)

        )
                
    }
}



//MARK:- Functions
extension String {
    func load() -> UIImage{
        do {
            
            guard let url = URL(string: self) else{return UIImage()}
            let data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            return UIImage()
        }
    }
}
