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
    @Published var finishedLoading = false
    @Published var errorMessage = ""
    
    init() {
        finishedLoading = false
        errorMessage = ""
        loadRandomRecipes()
    }
    
    func loadRandomRecipes(){
        finishedLoading = false
        guard let url = URL(string: "\(randomRecipeURL)\(apiKey)&number=4") else {return}
        print(url)
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                do {
                    let recipesFetched = try jsonDecoder.decode(RandomRecipes.self, from: data)
                    DispatchQueue.main.async {
                        self.randomRecipes = recipesFetched.recipes
                        self.finishedLoading = true
                    }
                } catch let jsonError as NSError {
                    DispatchQueue.main.async {
                        self.errorMessage = jsonError.localizedDescription
                        self.finishedLoading = true
                    }
                    print("JSON decode failed: \(jsonError.localizedDescription)")
                }
            }
            
            
            
        }
        task.resume()
        
    }
    
}

