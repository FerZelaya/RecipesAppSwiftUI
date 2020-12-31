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
        
        ScrollView {
            ZStack(alignment: .top){
                Image(selectedRecipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: CustomBackButton(presentationMode: presentationMode))
            
        }
        
    }
    
}
