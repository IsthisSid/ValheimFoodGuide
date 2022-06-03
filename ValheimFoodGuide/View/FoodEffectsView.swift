//
//  FoodEffectsView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/3/22.
//

import SwiftUI

struct FoodEffectsView: View {
    // MARK: - PROPERTIES
    
    var food: Food
    let effects: [String] = ["Max Health", "Max Stamina", "Duration", "Healing"]
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Effects per item") {
                ForEach(0..<effects.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                        Image(systemName: "info.circle")
                        Text(effects[item])
                        }
                        .foregroundColor(food.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(food.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX

    }
}

    // MARK: - PREVIEW

struct FoodEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodEffectsView(food: foodData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
