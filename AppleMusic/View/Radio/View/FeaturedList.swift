//
//  FeaturedList.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct FeaturedList: View {
    var rows: [GridItem]
    var featuredType: Bool
    @State private var featured = featuredList
    @State private var searched = searchedList
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(
                    featuredType ? featured : searched,
                    id: \.self.id
                ) { element in
                    FeaturedCell(cell: element)
                }
            }
            .frame(height: featuredType ? 270 : 300, alignment: .leading)
        }
    }
}

struct FeaturedList_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedList(rows: [GridItem(.adaptive(minimum: 300))], featuredType: true)
    }
}
