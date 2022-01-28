//
//  TopRecipesVM.swift
//  Re-C-Ps
//
//

import Foundation
import SwiftUI

class TopRecipesVM: ObservableObject{
    
    @Published var topRecipes = [Feed]()
    @Published var finishedLoading = true
    @Published var errorMessage = ""
    
    let headers = [
        "x-rapidapi-host": "yummly2.p.rapidapi.com",
        "x-rapidapi-key": yummlyKey
    ]
    
    init() {
        finishedLoading = false
        errorMessage = ""
        loadTopRecipes()
    }
    
    func loadTopRecipes(){
        finishedLoading = false
        guard let url = URL(string: feedListURL) else {return}
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = headers
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                do {
                    let recipesFetched = try jsonDecoder.decode(TopRecipes.self, from: data)
                    DispatchQueue.main.async {
                        self.topRecipes = recipesFetched.feed
                        self.finishedLoading = true
                    }
                } catch let jsonError as NSError {
                    DispatchQueue.main.async {
                        self.errorMessage = jsonError.localizedDescription
                        self.finishedLoading = true
                    }
                    print(String(describing: jsonError))
                }
            }
            
            
            
        }
        task.resume()
        
    }
    
}

