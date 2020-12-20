import Foundation


struct RandomRecipes: Codable {
    let recipes: [Recipe]
}



struct Recipe: Codable {
    let id: Int
    let title: String
    let readyInMinutes: Int
    let servings: Int
    let image: String
    let summary: String
}
