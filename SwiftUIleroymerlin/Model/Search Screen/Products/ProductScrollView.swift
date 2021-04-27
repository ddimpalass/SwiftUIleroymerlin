//
//  ProductScrollView.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct ProductScrollView: View {
    let header: String
    let products: [Product]
    
    var body: some View {
        VStack {
            HStack {
                Text(header).font(.system(size: 22, weight: .semibold, design: .default))
                Spacer()
            }
            .padding(.horizontal, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: -10) {
                    ForEach(products) { product in
                        ProductCellView(product: product)
                    }
                }
            }
            .frame(height: 300)
        }
    }
}

struct ProductScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductScrollView(header: "Недавно просмотренные",
                          products: Product.createProductList())
    }
}
