//
//  SeeAllCell.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct SeeAllCell: View {
    let category: Category
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(5)
                .foregroundColor(Color(UIColor.systemGray6))
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("MainColor"))
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                }
                Text(category.categoryName)
                    .font(.system(size: 15))
            }
            .padding(10)
        }
        .frame(width: 125, height: 125)
        .padding()
    }
}

struct SeeAllCell_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllCell(category: Category.createCategoryList().last!)
    }
}
