//
//  CategoryView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct CategoryView: View {
    private let columns = [GridItem(.adaptive(minimum: 160))]
    @State private var categories = categoryList
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(searchCategoryBrowser)
                .bold().font(.system(size: Fonts.xl.size)).frame(alignment: .leading)
                .padding([.top, .bottom], Paddings.s.size)

            LazyVGrid(columns: columns) {
                ForEach(categories, id: \.self.id) { category in
                    NavigationLink(
                        destination: CategoryDetails(category: category),
                        label: {
                            CategoryCell(cell: category)
                        })
                }
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
