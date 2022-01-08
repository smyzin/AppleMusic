//
//  TabBarView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            VStack {
                LibraryView()
                Player()
            }
            .tabItem {
                Image(systemName: Tabs.media.icon)
                Text(Tabs.media.title)
            }
            VStack {
                RadioView()
                Player()
            }
            .tabItem {
                Image(systemName: Tabs.radio.icon)
                Text(Tabs.radio.title)
            }
            VStack {
                SearchView()
            }
            .tabItem {
                Image(systemName: Tabs.search.icon)
                Text(Tabs.search.title)
            }
        }
        .accentColor(.red)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
