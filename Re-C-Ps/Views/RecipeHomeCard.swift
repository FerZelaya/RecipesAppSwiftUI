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
        
        VStack(alignment: .leading, spacing: 6){
            
            ZStack{
                
                Color("PrimaryGreen")
                    .cornerRadius(15)
                
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(10)
                
            }
            
            Text(recipe.title)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
            
            Text("\(recipe.spoonacularScore)")
                .fontWeight(.heavy)
                .foregroundColor(Color("SecondaryColor"))
            
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


