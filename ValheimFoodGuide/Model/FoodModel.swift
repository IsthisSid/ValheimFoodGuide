//
//  FoodModel.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/2/22.
//

import SwiftUI

// MARK: - FOOD DATA MODEL

struct Food: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
