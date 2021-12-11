//
//  FeaturedModel.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import Foundation

// MARK: - Featured
struct Featured {
    var id = UUID()
    var name: String
    var author: String
    var image: String
}

let featuredList = [
    Featured(name: "Russian Hip-hop station", author: "Apple music russian hip-hop", image: "Item_1"),
    Featured(name: "Russian Hits station", author: "Apple music hits", image: "Item_2"),
    Featured(name: "Chill station", author: "Apple music chill", image: "Item_3"),
    Featured(name: "Pop station", author: "Apple music pop", image: "Item_4"),
    Featured(name: "Dance station", author: "Apple music dance", image: "Item_5"),
    Featured(name: "hits station", author: "Apple music hits", image: "Item_6"),
]
