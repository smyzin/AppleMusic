//
//  SearchModel.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 09.01.2022.
//

import Foundation

// MARK: - Searched
struct SearchedCategory {
    var id = UUID()
    var name: String
    var author: String
    var image: String
}

struct SearchedCategoryPlaylist {
    var id = UUID()
    var name: String
}

let searchedList = [
    Featured(category: "New album", name: "Exit to the city", author: "Noize MC", image: "large_01"),
    Featured(category: "Featured album", name: "Qwerty LAng", author: "Boulevard Depo & SP4K", image: "large_01"),
    Featured(category: "New album", name: "Beauty & Ugly", author: "Oxxxymiron", image: "large_01"),
    Featured(category: "New album", name: "Radio Apocalipsis", author: "ATL", image: "large_01"),
    Featured(category: "New in spatial audio", name: "Best Friends", author: "LOVV66", image: "large_01"),
    Featured(category: "Featured album", name: "Krasavchik", author: "Blago white", image: "large_01"),
]

let searchedSmallList = [
    SearchedCategory(name: "KIRILLITSA", author: "Russian Hip-Hop", image: "small_01"),
    SearchedCategory(name: "Chill Rap", author: "Apple Music Hip Hop/Rap", image: "small_02"),
    SearchedCategory(name: "Life and Rhymes", author: "Apple Music", image: "small_03"),
    SearchedCategory(name: "Super Game", author: "Russian Hip-Hop", image: "small_01"),
    SearchedCategory(name: "Street Workout", author: "Apple Music Fitness", image: "small_02"),
    SearchedCategory(name: "The New Russia", author: "Russian Hip-Hop", image: "small_03"),
]

let searchedCategoryPlaylist = [
    SearchedCategoryPlaylist(name: "Playlists"),
    SearchedCategoryPlaylist(name: "New Releases"),
    SearchedCategoryPlaylist(name: "Artist Playlists"),
    SearchedCategoryPlaylist(name: "2021: Main Releases"),
]
