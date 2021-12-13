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
                    
//                    HStack(spacing: 15){
//                        HStack(spacing:10){
//                            Image(systemName: "magnifyingglass")
//                                .foregroundColor(.gray)
//
//                            TextField("Search Recipe", text: $searchRecipeTextField)
//
//                        }
//                        .padding(15)
//                        .background(Color(.systemGray2))
//                        .cornerRadius(15)
//
//
//                        Button(action:{}){
//                            Image(systemName: "slider.horizontal.3")
//                                .padding()
//                                .foregroundColor(Color(.white))
//                                .background(Color("SecondaryColor").opacity(0.9))
//                                .cornerRadius(15)
//
//                        }
//                    }
//                    .padding(.horizontal)
                    
                    HStack(spacing:15){
                        Text("Random Recipes")
                            .font(.custom("Helvetica", fixedSize: 35))
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryColor"))
                    }
                    
                    
                    if(homeVM.finishedLoading){
                        if(homeVM.errorMessage != ""){
                            Text(homeVM.errorMessage)
                                .font(.custom("Helvetica", fixedSize: 25))
                                .fontWeight(.bold)
                                .padding()
                        } else {
                            ForEach(homeVM.randomRecipes){recipe in
                                
                                NavigationLink(destination: RecipeDetailView(selectedRecipe: recipe)) {
                                    RecipeHomeCard(recipe: recipe)
                                }
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                
                                
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
