//
//  StationModel.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import Foundation

// MARK: - Stations
struct Station {
    var id = UUID()
    var name: String
    var description: String
    var image: String
}

let stationsList = [
    Station(name: "The zane lowe Show", description: "Popular right now", image: "Item_sm_1"),
    Station(name: "Superbloom Radio", description: "Travis Mills", image: "Item_sm_2"),
    Station(name: "Rap life radio", description: "Rap life radio with Ebro Darden", image: "Item_sm_3"),
    Station(name: "One mix", description: "Apple music awarded", image: "Item_sm_4"),
    Station(name: "Mixtape delivery Service", description: "St. Vincent", image: "Item_sm_5"),
    Station(name: "The Alligator Hour", description: "Joshua Homme", image: "Item_sm_6"),
]
