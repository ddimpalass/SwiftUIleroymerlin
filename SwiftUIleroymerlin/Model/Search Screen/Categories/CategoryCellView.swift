//
//  CategoryView.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct CategoryCellView: View {
    let category: Category
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(5)
                .foregroundColor(Color(UIColor.systemGray6))
            VStack {
                HStack {
                    Text(category.categoryName)
                        .font(.system(size: 15)
                        )
                    Spacer()
                }
                .padding(10)
                Spacer()
                HStack {
                    Spacer()
                    Image(category.categoryImage)
                        .resizable()
                        .scaledToFit()
                }
            }
            
        }
        .frame(width: 125, height: 125)
        .padding()
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView(category: Category.createCategoryList()[2])
    }
}
