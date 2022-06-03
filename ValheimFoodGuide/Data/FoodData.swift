//
//  FoodData.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/2/22.
//

import SwiftUI

// MARK: - FOOD DATA

let foodData: [Food] = [
    Food(
        title: "Blueberry",
        headline: "Blueberries are found in the Black Forest biome.",
        image: "Blueberry",
        gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
        description: "Blueberries can be eaten to recover a little health and stamina, but save them for future Queens Jam, Muckshakes, and Deer Stew.",
        nutrition: ["8", "25", "600s", "1hp/tick"]),
    
    Food(
        title: "Raspberry",
        headline: "Raspberries are found in the Meadows.",
        image: "Raspberry",
        gradientColors: [Color("ColorRaspberryLight"), Color("ColorRaspberryDark")],
        description: "Raspberries are valuable in early game (don't destroy the bushes!). Save these berries for mid-late game recipes such as Queens Jam and Medium Healing Mead.",
        nutrition: ["7", "20", "600s", "1hp/tick"]),
    
    Food(
        title: "Honey",
        headline: "Honey can be obtained from beehives which are typically found within abandoned houses in the Meadows and sometimes around Swamps.",
        image: "Honey",
        gradientColors: [Color("ColorHoneyLight"), Color("ColorHoneyDark")],
        description: "When you break a beehive, you receive a queen bee which can be used to craft your own beehives at your base to create a honey farm.",
        nutrition: ["8", "35", "900s", "1hp/tick"])
    
]
