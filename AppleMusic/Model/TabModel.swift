//
//  Modules.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import Foundation

// MARK: - Tabs
enum Tabs {
    case media, radio, search
    
    var title: String {
        switch self {
        case .media: return "Media"
        case .radio: return "Radio"
        case .search: return "Search"
        }
    }
    
    var icon: String {
        switch self {
        case .media: return "music.note.house"
        case .radio: return "dot.radiowaves.left.and.right"
        case .search: return "magnifyingglass"
        }
    }
}

struct TabModel {
    var name: String
    var icon: String
}

let tabsList = [
    TabModel(name: Tabs.media.title, icon: Tabs.media.icon),
    TabModel(name: Tabs.radio.title, icon: Tabs.radio.icon),
    TabModel(name: Tabs.search.title, icon: Tabs.search.icon),
]
