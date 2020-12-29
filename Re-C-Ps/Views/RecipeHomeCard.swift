//
//  RecipeHomeCard.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/19/20.
//

import SwiftUI

struct RecipeHomeCard: View {
    
    var recipe: Recipe
    
    @Binding var like: Bool
    
    var body: some View {
        
        VStack(alignment: .leading){
            

            Image(recipe.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(15)
            
            
            HStack {
                
                VStack(spacing:10) {
                    
                    Text(recipe.title)
                        .font(.custom("Helvetica", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    HStack(spacing: 5) {
                        
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        
                        Text("\(recipe.spoonacularScore) min")
                            .font(.subheadline)
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    like.toggle()
                }){
                    Image(systemName: like ? "heart.fill" : "heart")
                        .font(.title)
                        .foregroundColor(.white)
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


