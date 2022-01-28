//
//  HomeRecipeDetaileView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/25/20.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var selectedRecipe: Feed
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            ZStack{
                
                GeometryReader {reader -> AnyView in
                    
                    let offset = reader.frame(in: .global).minY
                    
                    return AnyView(
                        AsyncImage(url: URL(string: selectedRecipe.display.images[0])) {image in
                            image
                                .resizable()
                                .scaledToFill()
                        } placeholder: {
                            Color.purple.opacity(0.1)
                        }
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
                        //
                        //                        CustomLikeButton(liked: self.$selectedRecipe.liked)
                        
                    }
                    .padding([.leading, .trailing],18)
                    .padding(.top, 35)
                    
                    Spacer(minLength: 0)
                }
                
                
            }
            
            
            VStack(alignment: .leading, spacing: 3){
                HStack {
                    Text(selectedRecipe.display.displayName)
                        .font(.title)
                        .bold()
                        .lineLimit(5)
                    
                    Spacer(minLength: 0)
                }
                .padding(.bottom, 10)
                
                HStack(spacing: 10) {
                    HStack(spacing:5) {
                        Image(systemName: "star.fill")
                            .font(.system(size: 20))
                            .foregroundColor(Color("SecondaryColor"))
                        
                        Text("\(selectedRecipe.content.details.rating)")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color(.label))
                    }
                    Spacer()
                    HStack(spacing: 5) {
                        
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        
                        Text(selectedRecipe.content.details.totalTime)
                            .font(.subheadline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(.secondaryLabel))
                    }
                    
                }
                .padding(.bottom, 10)
                
                Text("Ingredients:")
                    .font(.title2)
                    .bold()
                    .padding(.top, 10)
                
                ForEach(selectedRecipe.content.ingredientLines.indices, id: \.self){index in
                    Text(selectedRecipe.content.ingredientLines[index].wholeLine)
                        .font(.custom("", size: 20))
                        .foregroundColor(Color(.systemGray))
                        .lineLimit(15)
                        .padding(.vertical, 3)
                }
                
                Text("Instructions:")
                    .font(.title2)
                    .bold()
                    .padding(.top, 10)
                
                
                ForEach(selectedRecipe.content.preparationSteps.indices, id: \.self){index in
                    Text("\(index+1): \(selectedRecipe.content.preparationSteps[index])")
                        .font(.custom("", size: 20))
                        .foregroundColor(Color(.systemGray))
                        .lineLimit(15)
                        .padding(.vertical, 15)
                }
                
            }
            .padding(.horizontal,17)
            
            
        }
        .background(Color("Background"))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .navigationTitle("")
        .edgesIgnoringSafeArea(.all)
    }
    
}





//MARK: Extensions

extension View {
    func customCornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}







////MARK: Preview
//struct RecipeDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            RecipeDetailView(selectedRecipe: egRecipe)
//        }
//    }
//}
