//
//  FeaturedList.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct FeaturedList: View {
    var rows: [GridItem]
    @State private var featured = featuredList
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(featured, id: \.self.id) { feature in
                    FeaturedCell(cell: feature)
                }
            }
            .frame(height: 270, alignment: .leading)
        }
    }
}

struct FeaturedList_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedList(rows: [GridItem(.adaptive(minimum: 300))])
    }
}
