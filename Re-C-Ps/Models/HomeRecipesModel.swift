
import SwiftUI

struct RandomRecipes: Codable, Identifiable, Hashable {
    let id: Int
    let recipes: [Recipe]
}



// MARK: - Recipe
struct Recipe: Codable, Identifiable, Hashable {
    let id: Int
    let title: String
    let spoonacularScore, healthScore, readyInMinutes, servings: Int
    let aggregateLikes: Int
    let image: String
    let summary: String
    let extendedIngredients: [ExtendedIngredient]
    let instructions: String
    let dishTypes: [String]
}

// MARK: - ExtendedIngredient
struct ExtendedIngredient: Codable, Identifiable, Hashable {
    let id: Int
    let originalString: String
}
