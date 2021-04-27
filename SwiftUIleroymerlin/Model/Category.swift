//
//  Category.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct Category: Identifiable {
    let id: Int
    let categoryName: String
    let categoryImage: String
    
    
    static func createCategoryList() -> [Category] {
        var category: [Category] = []
        
        for index in 0..<DataManager.shared.categoryName.count {
            category.append(Category(id: index,
                                     categoryName: DataManager.shared.categoryName[index],
                                     categoryImage: "Category \(index)")
            )
        }
        
        return category
    }
}
