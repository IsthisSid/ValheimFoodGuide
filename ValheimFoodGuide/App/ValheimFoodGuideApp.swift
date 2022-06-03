//
//  ValheimFoodGuideApp.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 5/25/22.
//

import SwiftUI

@main
struct ValheimFoodGuideApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
