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
}

var recipesHome = [
    Recipes(image: "r1", title: "Masala Pasta", detail: "If you love pasta, and if you love Indian food, you won't be able to resist this Masala Pasta.", rating: "22", type: "easy"),
    
    Recipes(image: "r2", title: "Four Seasons", detail: "Best of four world in this amazing four seasons pizza recipe lorem lorem lorem relomre loasdk  lorem ipsum jnkjkj kjn", rating: "31", type: "easy"),
    Recipes(image: "r3", title: "Fried Chicken", detail: "When it comes to chicken there just isn’t anything more delicious than a crusty piece of finger-licking good fried chicken.", rating: "31", type: "easy")
]

