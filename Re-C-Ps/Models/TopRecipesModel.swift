// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let recipesModel = try? newJSONDecoder().decode(RecipesModel.self, from: jsonData)

import Foundation

// MARK: - RecipesModel
struct TopRecipes: Codable {
    let feed: [Feed]
}

// MARK: - Feed
struct Feed: Codable {
    let display: Display
    let content: Content
    let trackingID: String

    enum CodingKeys: String, CodingKey {
        case display, content
        case trackingID = "tracking-id"
    }
}

// MARK: - Content
struct Content: Codable {
    let contentDescription: Description?
    let details: Details
    let ingredientLines: [IngredientLine]
    let preparationSteps: [String]

    enum CodingKeys: String, CodingKey {
        case contentDescription = "description"
        case details, ingredientLines, preparationSteps
    }
}

// MARK: - Description
struct Description: Codable {
    let text: String
}

// MARK: - Details
struct Details: Codable {
    let directionsURL, totalTime, name: String
    let attribution: Attribution
    let numberOfServings, rating: Int

    enum CodingKeys: String, CodingKey {
        case directionsURL = "directionsUrl"
        case totalTime, name, attribution, numberOfServings, rating
    }
}

// MARK: - Attribution
struct Attribution: Codable {
    let url: String
}

// MARK: - IngredientLine
struct IngredientLine: Codable {
    let wholeLine: String
}

// MARK: - Display
struct Display: Codable {
    let displayName: String
    let images: [String]
}

