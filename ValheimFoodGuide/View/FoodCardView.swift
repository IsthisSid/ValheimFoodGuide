//
//  FoodCardView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 5/25/22.
//

import SwiftUI

struct FoodCardView: View {
    // MARK: - PROPERTIES
    
    var food: Food
    
    @State private var isAnimating: Bool = false
    // @State allows us to mutate the state of the animation every time the card appears on the screen. By default, the value is false meaning the image is still and no aninmation.
    
    // MARK: - BODY
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(food.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120, alignment: .center)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y:
                    8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT: TITLE
                Text(food.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text(food.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            }   //: VSTACK
        }   //: ZSTACK
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: food.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


    // MARK: - PREVIEW

struct FoodCardView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardView(food: foodData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
