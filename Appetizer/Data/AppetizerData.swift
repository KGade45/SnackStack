//
//  Appetizer.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 29/07/25.
//

import Foundation

struct Appetizer: Hashable, Codable, Identifiable {
    var description: String
    var price: Double
    var imageName: String
    var protein: Int
    var calories: Int
    var id: Int
    var carbs: Int
    var name: String
}


struct MockData {
    static let sampleDish = Appetizer(
        description: "A crispy start to any meal.",
        price: 7.49,
        imageName: "food_placeholder",
        protein: 3,
        calories: 420,
        id: 8,
        carbs: 22,
        name: "Fruit Salad"
    )
    
    static let dishes: [Appetizer] = [
        Appetizer(
            description: "A crispy start to any meal.",
            price: 7.49,
            imageName: "spring-rolls",
            protein: 3,
            calories: 420,
            id: 8,
            carbs: 22,
            name: "Spring Rolls"
        ),
        Appetizer(
            description: "Cheesy and irresistible bites.",
            price: 6.99,
            imageName: "mozzarella-sticks",
            protein: 6,
            calories: 510,
            id: 9,
            carbs: 18,
            name: "Mozzarella Sticks"
        ),
        Appetizer(
            description: "Perfectly seasoned potato goodness.",
            price: 5.49,
            imageName: "potato-wedges",
            protein: 4,
            calories: 460,
            id: 10,
            carbs: 36,
            name: "Potato Wedges"
        ),
        Appetizer(
            description: "Crunchy, spicy and addictive.",
            price: 6.75,
            imageName: "jalapeno-poppers",
            protein: 5,
            calories: 480,
            id: 12,
            carbs: 16,
            name: "Jalapeno Poppers"
        ),
        Appetizer(
            description: "A creamy classic with chips.",
            price: 8.25,
            imageName: "spinach-artichoke-dip",
            protein: 7,
            calories: 530,
            id: 13,
            carbs: 20,
            name: "Spinach Artichoke Dip"
        ),
        Appetizer(
            description: "Golden-fried perfection in every bite.",
            price: 9.49,
            imageName: "onion-rings",
            protein: 3,
            calories: 550,
            id: 14,
            carbs: 25,
            name: "Onion Rings"
        )
    ]
}
