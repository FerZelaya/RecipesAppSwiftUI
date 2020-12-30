
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
    var liked: Bool
}

// MARK: - ExtendedIngredient
struct ExtendedIngredient: Codable, Identifiable, Hashable {
    let id: Int
    let originalString: String
}


var Rrecipes = [
    
    Recipe(id: 1, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r1", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 2, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r2", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 3, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 4, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r1", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 5, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r2", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 6, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 7, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r1", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 8, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r2", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
    Recipe(id: 9, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"], liked: false),
]
