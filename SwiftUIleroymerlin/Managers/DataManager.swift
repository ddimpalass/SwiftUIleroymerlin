//
//  DataManager.swift
//  SwiftUIleroymerlin
//
//  Created by Apple on 26.04.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let productDescription = ["Грунтовка глубокого проникновения Ceresit CT17 10 л",
                     "Керамогранит Euroceramika Карвалио 15х60 см 1.35 м цвет серый",
                     "Мешки для мусора 220 л цвет черный 10 шт.",
                     "Штукатурка гипсовая Unis Теплон белый 30 кг",
                     "Круг отрезной по металлу A54, 125x1.2x22 мм",
                     "Тачка одноколесная 200 кг/90 л",
                     "Салфетка для стёкол и зеркал 35х35 см",
                     "Контейнер для сыпучих продуктов MIO, 2.1 k",
                     "Очиститель для стёкол Clean Glass 600 мл",
                     "Кашпо Idea Дюна d34 h63 см v42 л пластик белый"]
    let productPrice = [722.00,
                        730.00,
                        255.00,
                        318.00,
                        21.00,
                        2383.00,
                        54.00,
                        104.00,
                        68.00,
                        658.00]
    let categoryName = ["Каталог",
                      "Сад",
                      "Освещение",
                      "Инструменты",
                      "Строймате-риалы",
                      "Декор",
                      "Смотреть всё"]
    
    private init (){}
    
}
