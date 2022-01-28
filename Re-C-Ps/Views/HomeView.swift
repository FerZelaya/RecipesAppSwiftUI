//
//  HomeView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/13/20.
//

import SwiftUI
import Lottie




struct HomeView: View {
    
    var columns = (Array(repeating: GridItem(.flexible(), spacing: 15), count: 2),spacing: 15)
    
    @ObservedObject var homeVM = HomeRecipesVM()
    
    @ObservedObject var topRecipesVM = TopRecipesVM()
    
    @State private var image = UIImage()
    
    @State private var searchRecipeTextField = ""
    
    
    var body: some View {
        
        VStack{
            
            ZStack {
                HStack{
                    
                    Button(action: {}){
                        Image(systemName: "line.horizontal.3")
                            .font(.title)
                            .foregroundColor(Color(.label))
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    
                    
                    Button(action:{}){
                        Image("profile")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Capsule())
                    }
                    
                }
                .padding([.horizontal, .bottom])
                .padding(.top, 10)
                
                Text("HOME")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.label))
                
                
            }
            
            
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack {
                    HStack(spacing:15){
                        Text("Top Recipes")
                            .font(.custom("Helvetica", fixedSize: 35))
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryColor"))
                    }
                    
                    
                    if(topRecipesVM.finishedLoading){
                        if(topRecipesVM.errorMessage != ""){
                            Text(topRecipesVM.errorMessage)
                                .font(.custom("Helvetica", fixedSize: 25))
                                .fontWeight(.bold)
                                .padding()
                        } else {
                            ForEach(topRecipesVM.topRecipes, id: \.trackingID){recipe in
                                NavigationLink(destination: RecipeDetailView(selectedRecipe: recipe)){
                                    RecipeHomeCard(recipe: recipe)
                                }
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                                .navigationTitle("")
                                
                                
                            }
                            .padding()
                            .padding(.top, 10)
                        }
                    } else {
                        LottieView(filename: "loading")
                            .frame(width: 200, height: 200)
                    }
                    
                    
                    
                    
                    
                    
                }
            }
            
            
            Spacer(minLength: 0)
            
        }
        .background(Color("Background").ignoresSafeArea(.all, edges: .all))
        
        
        
        
        
    }
    
}







//MARK:- Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
