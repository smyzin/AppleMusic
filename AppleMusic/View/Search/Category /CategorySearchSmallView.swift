//
//  CategorySearchSmallView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 09.01.2022.
//

import SwiftUI

struct CategorySearchSmallView: View {
    var rows: [GridItem]
    @State private var searched = searchedSmallList
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
        LazyHGrid(rows: rows) {
            ForEach(searched, id: \.self.id) { cat in
                VStack {
                    Image(cat.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 155, height: 155)
                        .cornerRadius(Radius.r7)
                    Text(cat.name)
                        .foregroundColor(Color(UIColor.label))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(cat.author)
                        .foregroundColor(Color(.systemGray2))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: 155)
            }
        }
        .frame(height: 200, alignment: .leading)
        }
    }
}

struct CategorySearchSmallView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchSmallView(rows: [GridItem(.adaptive(minimum: 220))])
    }
}
