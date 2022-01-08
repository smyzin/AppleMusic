//
//  SearchView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct SearchView: View {
    private let columns = [GridItem(.adaptive(minimum: 160))]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                SearchBar(text: .constant(""))
                CategoryView()
            }
            .padding([.leading, .trailing], Paddings.m.size)
            .navigationBarTitle(Tabs.search.title, displayMode: .automatic)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
