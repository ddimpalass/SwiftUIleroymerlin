//
//  ProductView.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct ProductCellView: View {
    let product: Product
    
    var body: some View {
        VStack {
            Spacer()
            Image(product.productImage)
                .resizable()
                .scaledToFit()
            Spacer()
            HStack(alignment: .firstTextBaseline) {
                Text("\(Int(product.productPrice))")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                Text("₽/шт.")
                    .font(.system(size: 15, weight: .semibold, design: .default))
                Spacer()
            }
            .padding(.vertical, 10)
            Text(product.productDescription)
                .font(.system(size: 15))
                .lineLimit(2)
        }
        .frame(width: 125, height: 250)
        .padding()
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCellView(product: Product.createProductList().first!)
    }
}
