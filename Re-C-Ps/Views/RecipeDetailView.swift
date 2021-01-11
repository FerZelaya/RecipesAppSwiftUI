//
//  HomeRecipeDetaileView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/25/20.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var selectedRecipe: Recipe
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            ZStack{
                
                GeometryReader {reader -> AnyView in
                    
                    let offset = reader.frame(in: .global).minY
                    
                    return AnyView(
                        Image(selectedRecipe.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width, height: 300 + (offset > 0 ? offset : 0))
                            .offset(y: (offset > 0 ? -offset : 0))
                    )
                    
                    
                    
                }
                .frame(height: 300)
                .customCornerRadius(25, corners: [.bottomLeft, .bottomRight])
                .edgesIgnoringSafeArea(.top)
                
                
                
                VStack {
                    
                    HStack{
                        
                        CustomBackButton(presentationMode: presentationMode)
                        
                        Spacer(minLength: 0)
                        
                        CustomLikeButton(liked: self.$selectedRecipe.liked)
                        
                    }
                    .padding([.leading, .trailing],18)
                    .padding(.top, 35)
                    
                    Spacer(minLength: 0)
                }
                
                
            }
            
            
            VStack(alignment: .leading, spacing: 3){
                HStack {
                    Text(selectedRecipe.title)
                        .font(.largeTitle)
                        .bold()
                        .lineLimit(0)
                    
                    Spacer(minLength: 0)
                }
                
                Text(selectedRecipe.summary)
                    .font(.custom("", size: 18))
                    .foregroundColor(Color(.systemGray))
                    .lineLimit(10)
                
                HStack(spacing:5) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 20))
                        .foregroundColor(Color("SecondaryColor"))
                    
                    Text("\(selectedRecipe.spoonacularScore)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.label))
                    
                    Text("(\(selectedRecipe.aggregateLikes) likes)")
                        .font(.custom("", size: 18))
                        .foregroundColor(Color(.systemGray))
                        .padding(.horizontal,2)
                }
                .padding(.top, 35)
                
                
                
                
            }
            .padding(.horizontal,30)
            
            
        }
        .background(Color("Background"))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
    
}





//MARK: Extensions

extension View {
    func customCornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}







//MARK: Preview
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeDetailView(selectedRecipe: egRecipe)
        }
    }
}
