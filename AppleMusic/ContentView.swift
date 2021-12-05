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
                Image(systemName: "music.note.house")
                Text("Медиатека")
            }
            VStack {
                Spacer()
                Text("Радио")
                Spacer()
                Player()
            }
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Радио")
            }
            VStack {
                Spacer()
                Text("Поиск")
                Spacer()
                Player()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Поиск")
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
