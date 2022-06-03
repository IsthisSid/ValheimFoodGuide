//
//  FoodDetailView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/3/22.
//

import SwiftUI

struct FoodDetailView: View {
    // MARK: - PROPERTIES
    
    var food: Food
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FoodHeaderView(food: food)
                    
                    VStack(alignment: .leading, spacing: 20) {
                    // TITLE
                        Text(food.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(food.gradientColors[1])
                    // HEADLINE
                        Text(food.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    // EFFECTS
                        FoodEffectsView(food: food)
                        
                    // SUBHEADLINE
                        Text("More about \(food.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(food.gradientColors[1])
                        
                    // DESCRIPTION
                        Text(food.description)
                            .multilineTextAlignment(.leading)
                        
                    // LINK
                       SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(food.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

    // MARK: - PREVIEW

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: foodData[0])
    }
}
