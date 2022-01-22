//
//  SearchView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct SearchView: View {
    @State private var categories = categoryList
    @State private var searchText = ""
    @State private var isOn = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                SearchBar(text: $searchText)
                ScrollView(.vertical) {
                    searchText.isEmpty
                    ? AnyView(CategoryView())
                    : AnyView(CategorySearchView(searchText: $searchText))
                }
            }
            .padding([.leading, .trailing], Paddings.m.size)
            .navigationBarTitle(Tabs.search.title, displayMode: .automatic)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
