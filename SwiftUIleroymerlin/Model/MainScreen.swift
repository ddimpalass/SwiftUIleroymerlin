//
//  MainScreen.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import SwiftUI

struct MainScreen: View {
    
    var body: some View {
        TabView {
            SearchScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Главная")
                }
            ListScreen()
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Мой список")
                }
            MapScreen()
                .tabItem {
                    Image(systemName: "building")
                    Text("Магазины")
                }
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
            BasketScreen()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
        }
        .accentColor(Color("MainColor"))
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
