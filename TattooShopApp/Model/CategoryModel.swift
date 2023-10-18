//
//  CategoryModel.swift
//  TattooShopApp
//
//  Created by Марк Михайлов on 17.10.2023.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "black", title: "Black"),
    CategoryModel(icon: "yellow", title: "Yellow"),
    CategoryModel(icon: "green", title: "Green")
]

