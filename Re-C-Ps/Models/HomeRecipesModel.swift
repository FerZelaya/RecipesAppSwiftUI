
import SwiftUI

struct RandomRecipes: Codable, Hashable {
    var recipes: [Recipe]
}



// MARK: - Recipe
struct Recipe: Codable, Identifiable, Hashable {
    var id: Int
    var title: String
    var spoonacularScore, healthScore, readyInMinutes, servings: Int
    var aggregateLikes: Int
    var image: String
    var summary: String
    var extendedIngredients: [ExtendedIngredient]
    var instructions: String
    var dishTypes: [String]
}

// MARK: - ExtendedIngredient
struct ExtendedIngredient: Codable, Identifiable, Hashable {
    var id: Int
    var originalString: String
}


var Rrecipes = [
    
    Recipe(id: 1, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r1", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 2, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r2", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 3, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 4, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r1", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 5, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r2", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 6, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 7, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r1", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 8, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r2", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
    Recipe(id: 9, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"]),
]


var egRecipe = Recipe(id: 1, title: "Pasta", spoonacularScore: 30, healthScore: 28, readyInMinutes: 15, servings: 3, aggregateLikes: 10, image: "r3", summary: "qwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwerqwer qwer qwer qwerqwer qwer qewr qwer qer", extendedIngredients: [.init(id: 1, originalString: "123123123")], instructions: "123131231313123131231231231231231231", dishTypes: ["qwerqwer"])
