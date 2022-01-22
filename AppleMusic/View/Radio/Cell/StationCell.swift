//
//  StationCell.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct StationCell: View {
    var cell: Station
    
    var body: some View {
        HStack {
            Image(cell.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Spacer()
                Text(cell.name.capitalized)
                    .font(.system(size: Fonts.m.size))
                    .foregroundColor(Color(UIColor.label))
                Text(cell.description.capitalized)
                    .font(.system(size: Fonts.xs.size))
                    .foregroundColor(.gray)
                Spacer()
                Divider()
                    .background(Color(UIColor.systemGray4))
            }
        }
    }
}

struct StationCell_Previews: PreviewProvider {
    static var previews: some View {
        StationCell(cell: Station(name: "Popular", description: "Listening right now", image: "Item_sm_1"))
    }
}
