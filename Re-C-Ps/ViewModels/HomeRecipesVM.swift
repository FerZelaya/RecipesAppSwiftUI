//
//  HomeRecipesVM.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/21/20.
//

import Foundation
import SwiftUI

class HomeRecipesVM: ObservableObject{
    
    @Published var randomRecipes = [Recipe]()
    
//    init() {
//        loadRandomRecipes()
//    }
    
    func loadRandomRecipes(){
        guard let url = URL(string: "\(randomRecipeURL)\(apiKey)&number=9") else {return}
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error{
                print("Fetch failed \(error.localizedDescription)")
            } else {
                guard let data = data else {return}
                guard let decodedRecipes = try? JSONDecoder().decode(RandomRecipes.self, from: data) else { return }
                print(decodedRecipes.recipes.count)
                DispatchQueue.main.async {
                    self.randomRecipes = decodedRecipes.recipes
                }
            }
            
            
            
        }.resume()
        
    }
    
}

