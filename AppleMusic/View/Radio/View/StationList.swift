//
//  StationList.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct StationList: View {
    var columns: [GridItem]
    @State private var stations = stationsList
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Stations").bold().font(.system(size: 19)).frame(alignment: .leading)
            LazyVGrid(columns: columns, alignment: .leading) {
                ForEach(stations, id: \.self.id) { station in
                    StationCell(cell: station)
                }
                .padding([.top, .bottom], 5)
            }
        }
    }
}

struct StationList_Previews: PreviewProvider {
    static var previews: some View {
        StationList(columns: [GridItem(.adaptive(minimum: 400))])
    }
}
