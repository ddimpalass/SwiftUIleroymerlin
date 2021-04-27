//
//  SearchScreen.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct SearchScreen: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.3240638673, green: 0.7675533295, blue: 0.2493614554, alpha: 1)
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]
    }
    
    @State var searchText = ""
    @State var isSearching = false

    let products = Product.createProductList()
    let categories = Category.createCategoryList()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Color("MainColor")
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 0)
                    Spacer()
                }
                ScrollView(showsIndicators: false) {
                    SearchBar(searchText: $searchText, isSearching: $isSearching)
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: -10) {
                                ForEach(categories) { category in
                                    switch category.id {
                                    case 0:
                                        CatalogCellView(category: category)
                                    case (categories.count - 1):
                                        SeeAllCell(category: category)
                                    default:
                                        CategoryCellView(category: category)
                                    }
                                    
                                }
                            }
                        }.frame(height: 180)
                        ProductScrollView(header: "Недавно просмотренные", products: products.shuffled())
                        ProductScrollView(header: "Предложение ограничено", products: products.shuffled())
                        ProductScrollView(header: "Лучшая цена", products: products.shuffled())
                    }
                }
                .navigationTitle("Поиск товаров")
            }
        }
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack(spacing: 0){
            TextField("Поиск", text: $searchText)
                .padding(10)
                .background(Color.white)
                .cornerRadius(5)
                .padding(.leading)
                .onTapGesture {
                    isSearching = true
                }
            ZStack {
                Rectangle()
                    .cornerRadius(5)
                    .frame(width: 40, height: 37, alignment: .trailing)
                    .padding(5)
                    .foregroundColor(Color("MainColor"))
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
            }
            .padding(.leading, -50)
            Button(action: {}, label: {
                Image(systemName: "barcode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundColor(.black)
            })
            .frame(width: 45, height: 42)
            .background(Color.white)
            .cornerRadius(5)
            .padding(.horizontal)
        }
        .padding(.vertical, 5)
        .padding(.bottom, 20)
        .background(Color("MainColor"))
        
    }
}
