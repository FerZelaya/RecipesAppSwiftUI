//
//  APIFailureModel.swift
//  Re-C-Ps
//
//  Created by Fernando Zelaya on 12/6/21.
//

import Foundation

// MARK: - Welcome
struct APIFailureModel: Codable {
    let status: String
    let code: Int
    let message: String
}
