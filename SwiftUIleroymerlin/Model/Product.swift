//
//  Product.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct Product: Identifiable {
    let id: Int
    let productDescription: String
    let productPrice: Double
    let productImage: String
    
    static func createProductList() -> [Product] {
        var products: [Product] = []
        
        for index in 0..<DataManager.shared.productDescription.count {
            products.append(Product(id: index,
                                    productDescription: DataManager.shared.productDescription[index],
                                    productPrice: DataManager.shared.productPrice[index],
                                    productImage: "Product \(index + 1)")
            )
        }
        
        return products.shuffled()
    }
}
