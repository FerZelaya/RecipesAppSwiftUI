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
                
                Image(selectedRecipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 440, height: UIScreen.main.bounds.height / 3)
                    .cornerRadius(40)
                
                VStack {
                    
                    HStack{
                        
                        CustomBackButton(presentationMode: presentationMode)
                        
                        Spacer(minLength: 0)
                        
                        CustomLikeButton(liked: self.$selectedRecipe.liked)
                        
                    }
                    .padding(20)
                    
                    Spacer(minLength: 0)
                }
                .padding(20)
                    
                    
            }
            
            
            
            
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.top)
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
