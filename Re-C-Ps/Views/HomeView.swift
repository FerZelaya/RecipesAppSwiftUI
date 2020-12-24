//
//  HomeView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/13/20.
//

import SwiftUI




struct HomeView: View {
   
    @ObservedObject var homeVM = HomeRecipesVM()
    @State private var image = UIImage()
    
    
    @State private var searchRecipeTextField = ""
    
    var body: some View {
       
        VStack{
            
            HStack{
                
                Button(action: {}){
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.white)
                        
                }
                
                Spacer(minLength: 0)
                
                Button(action:{}){
                    Image("profile")
                        .renderingMode(.original)
                        .cornerRadius(5)
                }
                
            }
            .padding([.horizontal, .bottom])
            .padding(.top, 10)
            
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack {
                    
                    /*HStack(spacing: 15){
                        HStack(spacing:10){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            
                            TextField("Search Recipe", text: $searchRecipeTextField)
                            
                        }
                        .padding()
                        .background(Color(.systemGray2))
                        .cornerRadius(15)
                        
                        
                        Button(action:{}){
                            Image(systemName: "slider.horizontal.3")
                                .padding()
                                .foregroundColor(Color(.white))
                                .background(Color("SecondaryColor").opacity(0.9))
                                .cornerRadius(15)
                                
                        }
                    }
                    .padding(.horizontal)*/
                    
                    HStack(spacing:15){
                        Text("Top Recipes")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryColor"))
                        
                        Spacer(minLength: 0)
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack(spacing:15){
                            
                            ForEach(homeVM.randomRecipes){recipe in
                                
                                RecipeHomeCard(recipe: recipe)
                                
                            }
                            
                        }
                        .padding(.horizontal)
                        
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
        }
    }
}
