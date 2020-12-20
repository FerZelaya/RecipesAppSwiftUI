//
//  RecipesModel.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/19/20.
//

import Foundation
import SwiftUI

struct Recipes{
    var image: String
    var title: String
    var detail: String
    var rating: String
    var type: String
    var color: Color
}

var recipes = [
    Recipes(image: "r1", title: "Masala Pasta", detail: "If you love pasta, and if you love Indian food, you won't be able to resist this Masala Pasta.", rating: "22", type: "easy", color:Color(.yellow)),
    
    Recipes(image: "r2", title: "Four Seasons Pizza", detail: "Best of four world in this amazing four seasons pizza recipe", rating: "31", type: "easy", color:Color(.red)),
    Recipes(image: "r3", title: "Fried Chicken", detail: "When it comes to chicken there just isn’t anything more delicious than a crusty piece of finger-licking good fried chicken.", rating: "31", type: "easy", color:Color(.orange)),
    Recipes(image: "r1", title: "Masala Pasta", detail: "If you love pasta, and if you love Indian food, you won't be able to resist this Masala Pasta.", rating: "22", type: "easy", color:Color(.yellow)),
    
    Recipes(image: "r2", title: "Four Seasons Pizza", detail: "Best of four world in this amazing four seasons pizza recipe", rating: "31", type: "easy", color:Color(.red)),
    Recipes(image: "r3", title: "Fried Chicken", detail: "When it comes to chicken there just isn’t anything more delicious than a crusty piece of finger-licking good fried chicken.", rating: "31", type: "easy", color:Color(.orange)),Recipes(image: "r1", title: "Masala Pasta", detail: "If you love pasta, and if you love Indian food, you won't be able to resist this Masala Pasta.", rating: "22", type: "easy", color:Color(.yellow)),
    
    Recipes(image: "r2", title: "Four Seasons Pizza", detail: "Best of four world in this amazing four seasons pizza recipe", rating: "31", type: "easy", color:Color(.red)),
    Recipes(image: "r3", title: "Fried Chicken", detail: "When it comes to chicken there just isn’t anything more delicious than a crusty piece of finger-licking good fried chicken.", rating: "31", type: "easy", color:Color(.orange))
]
