//
//  MoodMeal.swift
//  st1_app_prac
//
//  Created by Aniket Singla on 07/08/25.
//

import Foundation

struct Mood{
    var emoji: String
    var name: String
}

struct Activity{
    var emoji: String
    var name: String
}

struct Meal{
    var mood: Mood
    var activity: Activity
    var suggestedMeal: String
}

var meals: [Meal] = [Meal(mood: Mood(emoji: "😄", name: "Happy"), activity: Activity(emoji: "🪑", name: "Sedentary"),suggestedMeal: "Meal 1"),Meal(mood: Mood(emoji: "😄", name: "Happy"), activity: Activity(emoji: "🚶", name: "Light"),suggestedMeal: "Meal 2"), Meal(mood: Mood(emoji: "😄", name: "Happy"), activity: Activity(emoji: "🏃‍♂️", name: "Moderate"),suggestedMeal: "Meal 3"),Meal(mood: Mood(emoji: "😄", name: "Happy"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"),suggestedMeal: "Meal 4"),Meal(mood: Mood(emoji: "😞", name: "Sad"), activity: Activity(emoji: "🪑", name: "Sedentary"),suggestedMeal: "Meal 5"),Meal(mood: Mood(emoji: "😞", name: "Sad"), activity: Activity(emoji: "🚶", name: "Light"),suggestedMeal: "Meal 6"), Meal(mood: Mood(emoji: "😞", name: "Sad"), activity: Activity(emoji: "🏃‍♂️", name: "Moderate"),suggestedMeal: "Meal 7"),Meal(mood: Mood(emoji: "😞", name: "Sad"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"),suggestedMeal: "Meal 8"),Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🪑", name: "Sedentary"),suggestedMeal: "Meal 9"),Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🚶", name: "Light"),suggestedMeal: "Meal 10"), Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🏃‍♂️", name: "Moderate"),suggestedMeal: "Meal 11"),Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"),suggestedMeal: "Meal 12"),Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🪑", name: "Sedentary"),suggestedMeal: "Meal 13"),Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🚶", name: "Light"),suggestedMeal: "Meal 14"), Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏃‍♂️", name: "Moderate"),suggestedMeal: "Meal 15"),Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"),suggestedMeal: "Meal 16"),]
