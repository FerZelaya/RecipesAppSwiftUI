//
//  RecipeHomeCard.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/19/20.
//

import SwiftUI

struct RecipeHomeCard: View {
    
    @State var recipe: Recipe
    
    var body: some View {
        
        VStack(alignment: .leading){
            

            ZStack {
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 230)
                    .cornerRadius(15)
                    
                Rectangle()
                    .fill(Color.black.opacity(0.09))
                    .blendMode(.multiply)
                    .cornerRadius(15)
                
                VStack{
                    
                    HStack{
                        
                        Spacer(minLength: 0)
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                                .foregroundColor(Color("SecondaryColor"))
                            
                            Text("\(recipe.spoonacularScore)")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color(.black))
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 14)
                        .background(Color(.white))
                        .clipShape(Capsule())
                        
                        
                        
                    }
                    
                    
                    
                    Spacer(minLength: 0)
                    
                }
                .padding()
                .clipped()
                
            }
            
            
            HStack {
                
                VStack(spacing:10) {
                    
                    Text(recipe.title)
                        .font(.custom("Helvetica", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.label))
                    
                    HStack(spacing: 5) {
                        
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        
                        Text("\(recipe.readyInMinutes) min")
                            .font(.subheadline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(.secondaryLabel))
                    }
                    
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    recipe.liked.toggle()
                }){
                    Image(systemName: recipe.liked ? "heart.fill" : "heart")
                        .font(.title)
                        .foregroundColor(recipe.liked ? Color("SecondaryColor") : Color(.label))
                }
                
                
                
            }
            
            
        }
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


