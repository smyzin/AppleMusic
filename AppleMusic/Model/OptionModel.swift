//
//  OptionModel.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import Foundation

// MARK: - Options
enum Option {
    case playlists, artists, albums, songs, tvShows, videoClips, genres, collections, authors, downloads, homeCollection
    
    var title: String {
        switch self {
        case .playlists: return "Playlists"
        case .artists: return "Artists"
        case .albums: return "Albums"
        case .songs: return "Songs"
        case .tvShows: return "TV & Movies"
        case .videoClips: return "Music Videos"
        case .genres: return "Genres"
        case .collections: return "Compilations"
        case .authors: return "Composers"
        case .downloads: return "Downloaded"
        case .homeCollection: return "Home Sharing"
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

let optionsList = [
    OptionModel(name: Option.playlists.title, icon: Option.playlists.icon, checked: false),
    OptionModel(name: Option.artists.title, icon: Option.artists.icon, checked: false),
    OptionModel(name: Option.albums.title, icon: Option.albums.icon, checked: false),
    OptionModel(name: Option.songs.title, icon: Option.songs.icon, checked: false),
    OptionModel(name: Option.tvShows.title, icon: Option.tvShows.icon, checked: false),
    OptionModel(name: Option.videoClips.title, icon: Option.videoClips.icon, checked: false),
    OptionModel(name: Option.genres.title, icon: Option.genres.icon, checked: false),
    OptionModel(name: Option.collections.title, icon: Option.collections.icon, checked: false),
    OptionModel(name: Option.authors.title, icon: Option.authors.icon, checked: false),
    OptionModel(name: Option.downloads.title, icon: Option.downloads.icon, checked: false),
    OptionModel(name: Option.homeCollection.title, icon: Option.homeCollection.icon, checked: false),
]
