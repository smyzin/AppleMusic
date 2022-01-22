//
//  FeaturedCell.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct FeaturedCell: View {
    var cell: Featured
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(cell.category)
                .textCase(.uppercase)
                .font(.system(size: Fonts.xxs.size))
                .foregroundColor(.gray)
            Text(cell.name.capitalized)
                .font(.system(size: Fonts.l.size))
                .foregroundColor(Color(UIColor.label))
            Text(cell.author.capitalized)
                .font(.system(size: Fonts.l.size))
                .foregroundColor(.gray)
            Image(cell.image)
                .resizable()
                .scaledToFit()
                .frame(width: 290, height: 200)
        }
    }
}

struct FeaturedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCell(cell: Featured(id: UUID(), category: "Some category", name: "Some station", author: "Apple Music", image: "Item_1"))
    }
}
