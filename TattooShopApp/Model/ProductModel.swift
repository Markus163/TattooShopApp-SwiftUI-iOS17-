//
//  ProductModel.swift
//  TattooShopApp
//
//  Created by Марк Михайлов on 17.10.2023.
//

import SwiftUI

// Product Model
struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

// Sample Products
var productList: [Product] = [
    Product(name: "WF Blackout", category: "Black", image: "Blackout", color: .black, price: 20),
    Product(name: "WF Dubai Gold", category: "Yellow", image: "Dubai", color: .yellow, price: 12),
    Product(name: "WF Everglades Green", category: "Green", image: "Everglades", color: .green, price: 12),
    Product(name: "WF Legendary", category: "Black", image: "Legendary", color: .black, price: 28),
    Product(name: "WF Great Wall Yellow", category: "Yellow", image: "Great", color: .red, price: 12),
    Product(name: "WF Emerald", category: "Green", image: "Emerald", color: .brown, price: 13),
    Product(name: "WF Canary Yellow", category: "Yellow", image: "Canary", color: .yellow, price: 12),
    Product(name: "WF Vegas Green", category: "Green", image: "Vegas", color: .mint, price: 12)
]
