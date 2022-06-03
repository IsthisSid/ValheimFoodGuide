//
//  OnboardingView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/2/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var food: [Food] = foodData
    
    // MARK: - BODY
    
    
    var body: some View {
        TabView {
            ForEach(food[0...2]) { item in
                FoodCardView(food: item)
                    
            } //: LOOP
            
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    // MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(food: foodData)
    }
}
