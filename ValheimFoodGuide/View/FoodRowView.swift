//
//  FoodRowView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/3/22.
//

import SwiftUI

struct FoodRowView: View {
    // MARK: - PROPERTIES
    
    var food: Food
    
    // MARK: - BODY
    
    
    var body: some View {
        HStack {
            Image(food.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(
                    gradient: Gradient(colors: food.gradientColors), startPoint: .top, endPoint: .bottom)
                            )
                    .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(food.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(food.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } //: HSTACK
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRowView(food: foodData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
