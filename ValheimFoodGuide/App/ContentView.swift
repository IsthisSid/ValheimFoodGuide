//
//  ContentView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 5/25/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var food: [Food] = foodData
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(food.shuffled()) { item in
                    NavigationLink(destination: FoodDetailView(food: item)) {
                        FoodRowView(food: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Food")
        } //: NAVIGATION

    }
}

    // MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(food: foodData)
    }
}
