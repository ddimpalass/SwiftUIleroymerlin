//
//  CatalogCellView.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct CatalogCellView: View {
    let category: Category
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(5)
                .foregroundColor(Color("mainColor"))
            VStack {
                HStack {
                    Text(category.categoryName)
                        .font(.system(size: 15))
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "list.dash")
                        .resizable()
                        .frame(width: 30, height: 25)
                        .scaledToFit()
                        
                }
            }
            .foregroundColor(.white)
            .padding(10)
        }
        .frame(width: 125, height: 125)
        .padding()
    }
}

struct CatalogCellView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogCellView(category: Category.createCategoryList().first!)
    }
}
