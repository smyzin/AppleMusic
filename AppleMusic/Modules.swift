//
//  Modules.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import Foundation

enum Option {
    case playlists, artists, albums, songs, tvShows, videoClips, genres, collections, authors, downloads, homeCollection
    
    var title: String {
        switch self {
        case .playlists: return "Плейлисты"
        case .artists: return "Артисты"
        case .albums: return "Альбомы"
        case .songs: return "Песни"
        case .tvShows: return "Телешоу и  фильмы"
        case .videoClips: return "Видеоклипы"
        case .genres: return "Жанры"
        case .collections: return "Сборники"
        case .authors: return "Авторы"
        case .downloads: return "Загружено"
        case .homeCollection: return "Домашняя коллекция"
        }
    }
    
    var icon: String {
        switch self {
        case .playlists: return "music.note.list"
        case .artists: return "music.mic"
        case .albums: return "square.stack.fill"
        case .songs: return "music.note"
        case .tvShows: return "tv"
        case .videoClips: return "tv.music.note"
        case .genres: return "guitars"
        case .collections: return "person.2.square.stack"
        case .authors: return "music.quarternote.3"
        case .downloads: return "arrow.down.circle"
        case .homeCollection: return "music.note.house"
        }
    }
}

enum Tabs {
    case media, radio, search
    
    var title: String {
        switch self {
        case .media: return "Медиатека"
        case .radio: return "Радио"
        case .search: return "Поиск"
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

struct OptionModel {
    var id = UUID()
    var name: String
    var icon: String
    var checked: Bool
}

struct TabModel {
//    var id = UUID()
    var name: String
    var icon: String
}

let optionsList = [
    OptionModel(name: Option.playlists.title, icon: Option.playlists.icon, checked: true),
    OptionModel(name: Option.artists.title, icon: Option.artists.icon, checked: true),
    OptionModel(name: Option.albums.title, icon: Option.albums.icon, checked: true),
    OptionModel(name: Option.songs.title, icon: Option.songs.icon, checked: false),
    OptionModel(name: Option.tvShows.title, icon: Option.tvShows.icon, checked: false),
    OptionModel(name: Option.videoClips.title, icon: Option.videoClips.icon, checked: true),
    OptionModel(name: Option.genres.title, icon: Option.genres.icon, checked: false),
    OptionModel(name: Option.collections.title, icon: Option.collections.icon, checked: false),
    OptionModel(name: Option.authors.title, icon: Option.authors.icon, checked: false),
    OptionModel(name: Option.downloads.title, icon: Option.downloads.icon, checked: true),
    OptionModel(name: Option.homeCollection.title, icon: Option.homeCollection.icon, checked: true),
]

let tabsList = [
    TabModel(name: Tabs.media.title, icon: Tabs.media.icon),
    TabModel(name: Tabs.radio.title, icon: Tabs.radio.icon),
    TabModel(name: Tabs.search.title, icon: Tabs.search.icon),
]
