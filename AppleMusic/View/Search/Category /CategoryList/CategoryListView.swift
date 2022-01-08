//
//  CategoryListView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct CategoryListView: View {
    @State var columns: [GridItem]
    @State private var categories = categoryList
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Search by category")
                    .bold().font(.system(size: Fonts.xl.size)).frame(alignment: .leading)
                    .padding([.top, .bottom], Paddings.s.size)
                LazyVGrid(columns: columns) {
                    ForEach(categories, id: \.self.id) { category in
                        CategoryCell(cell: category)
                    }
                }
            }
            NavigationLink(destination: CategoryDetails()) {
                Text("Do Something")
            }
            .navigationBarTitle(Tabs.search.title, displayMode: .automatic)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView(columns: [GridItem(.adaptive(minimum: 160))])
    }
}
