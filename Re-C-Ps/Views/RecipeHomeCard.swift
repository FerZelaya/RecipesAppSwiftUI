//
//  RecipeHomeCard.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/19/20.
//

import SwiftUI

struct RecipeHomeCard: View {
    
    @State var recipe: Feed
    
    var body: some View {
        
        VStack(alignment: .leading){
            

            ZStack {
                AsyncImage(url: URL(string: recipe.display.images[0])) {image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.purple.opacity(0.1)
                }
                .frame(height: 200)
                .cornerRadius(15)
//                   .aspectRatio(contentMode: .fill)
//                    .frame(height: 200)
//                    .cornerRadius(15)
                    
                Rectangle()
                    .fill(Color.black.opacity(0.1))
                    .blendMode(.multiply)
                    .cornerRadius(15)
                
                VStack{
                    
                    HStack{
                        
                        Spacer(minLength: 0)
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                                .foregroundColor(Color("SecondaryColor"))
                            
                            Text("\(recipe.content.details.rating)")
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
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    Text(recipe.display.displayName)
                        .font(.custom("Helvetica", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.label))
                        .lineLimit(1)
                    
                    HStack(spacing: 5) {
                        
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        
                        Text(recipe.content.details.totalTime)
                            .font(.subheadline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(.secondaryLabel))
                    }
                    
                }
                
                Spacer(minLength: 0)
                
//                Button(action: {
//                    recipe.liked.toggle()
//                }){
//                    Image(systemName: recipe.liked ? "heart.fill" : "heart")
//                        .font(.title)
//                        .foregroundColor(recipe.liked ? Color("SecondaryColor") : Color(.label))
//                }
                
                
                
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


