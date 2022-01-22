//
//  CategorySearchView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 09.01.2022.
//

import SwiftUI

struct CategorySearchView: View {
    @Binding var searchText: String
    @State private var categories = categoryList
    
    var body: some View {
        VStack {
            CategorySearchTop()
            ScrollView {
                VStack {
                    List {
                        ForEach(
                            categories.filter {
                                searchText.isEmpty ||
                                $0.name.localizedStandardContains(searchText)
                            },
                            id: \.self.id
                        ) { category in
                            Image(systemName: Icons.search.icon)
                            Text(category.name)
                        }
                    }
                    .listStyle(GroupedListStyle())
                }
            }
        }
    }
}

struct CategorySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchView(searchText: .constant(""))
    }
}
