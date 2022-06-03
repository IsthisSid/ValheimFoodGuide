//
//  FoodHeaderView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/3/22.
//

import SwiftUI

struct FoodHeaderView: View {
    
    // MARK: - PROPERTIES
    
    var food: Food
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: food.gradientColors), startPoint: .leading, endPoint: .bottomTrailing)
            
            Image(food.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZTACK
        .frame(height: 240)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

    // MARK: - PREVIEW
struct FoodHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FoodHeaderView(food: foodData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
