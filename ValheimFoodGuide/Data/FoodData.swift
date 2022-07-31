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
        nutrition: ["8", "35", "900s", "1hp/tick"]),
    
    Food(
        title: "Onion",
        headline: "Onion is a farmable food. They are obtained in the mountain biome as seeds, normally located in chests in locations such as ruined shacks.",
        image: "Onion",
        gradientColors: [Color("ColorHoneyLight"), Color("ColorHoneyDark")],
        description: "Onions are grown by planting Onion seeds with the Cultivator. It takes between 6000s and 7000s (between 100m and 116m36s, or about 3.33-3.88 in-game days) for them to fully grow.",
        nutrition: ["13", "40", "900s", "1hp/tick"]),
    
    Food(
        title: "Mushroom",
        headline: "Mushrooms can be found on the ground in the Meadows, Black Forest and Swamp. ",
        image: "Mushroom",
        gradientColors: [Color("ColorRaspberryLight"), Color("ColorRaspberryDark")],
        description: "Mushrooms can be used to craft recipes such as carrot soup and serpent stew. They can also be fed to hungry boars to either begin or continue the taming process, or to allow reproduction.",
        nutrition: ["15", "15", "900s", "1hp/tick"]),
    
    Food(
        title: "Yellow Mushroom",
        headline: "Yellow mushrooms are commonly found in Burial Chambers or Troll Caves in the Black Forest and Sunken Crypts in the Swamp.",
        image: "GoldMushroom",
        gradientColors: [Color("ColorHoneyLight"), Color("ColorHoneyDark")],
        description: "They can be eaten raw, or used at a Cauldron to craft Mead base: Minor stamina and Mead base: Medium stamina.",
        nutrition: ["10", "30", "600s", "1hp/tick"])
    
]
