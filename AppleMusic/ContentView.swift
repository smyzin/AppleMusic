//
//  ContentView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct ContentView: View {
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
                Spacer()
                Text(Tabs.radio.title)
                Spacer()
                Player()
            }
            .tabItem {
                Image(systemName: Tabs.radio.icon)
                Text(Tabs.radio.title)
            }
            VStack {
                Spacer()
                Text(Tabs.search.title)
                Spacer()
                Player()
            }
            .tabItem {
                Image(systemName: Tabs.search.icon)
                Text(Tabs.search.title)
            }
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
