//
//  HomeView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/13/20.
//

import SwiftUI




struct HomeView: View {
    @State private var randomRecipes = [Recipe]()
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
                    
                    HStack(spacing: 15){
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
                    .padding(.horizontal)
                    
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
                            
                            ForEach(recipes,id: \.title){recipe
                                in
                                
                                GeometryReader {geometry in
                                    
                                    RecipeHomeCard(recipe: recipe)
                                        .rotation3DEffect(Angle(degrees:
                                            (Double(geometry.frame(in: .global).minX) - 20) / -20
                                        ),
                                            axis: (x: 0.0, y: 10.0, z: 0.0)
                                    )
                                }
                                .frame(width: UIScreen.main.bounds.width / 2, height: 390)
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
    
    /*func loadRandomRecipes(){
        guard let url = URL(string: "https://api.spoonacular.com/recipes/random?\(apiKey)&number=1") else {return}
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data{
                if let decodedeResponse = try? JSONDecoder().decode(RandomRecipes.self, from: data){
                    DispatchQueue.main.async {
                        self.randomRecipes = decodedeResponse.recipes
                    }
                    return
                }
            }
            
            print("fetch failed")
        }.resume()
        
    }*/
    
    
    
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




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}
