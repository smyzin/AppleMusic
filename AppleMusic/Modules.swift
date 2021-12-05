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

struct OptionModel {
    var id = UUID()
    var name: String
    var icon: String
    var checked: Bool
}
