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
                
                GeometryReader {reader in
                    Image(selectedRecipe.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .offset(y: -reader.frame(in: .global).minY)
                        .frame(width:UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 300)
                        
            
                }
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .customCornerRadius(25, corners: [.bottomLeft, .bottomRight])
                
                
                
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
            
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("Background"))
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
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
