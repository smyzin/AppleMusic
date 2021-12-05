//
//  ListView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct ListView: View {
    let options = [
        OptionModel(name: Option.playlists.title, icon: Option.playlists.icon, checked: true),
        OptionModel(name: Option.artists.title, icon: Option.artists.icon, checked: true),
        OptionModel(name: Option.albums.title, icon: Option.albums.icon, checked: true),
        OptionModel(name: Option.songs.title, icon: Option.songs.icon, checked: false),
        OptionModel(name: Option.tvShows.title, icon: Option.tvShows.icon, checked: false),
        OptionModel(name: Option.videoClips.title, icon: Option.videoClips.icon, checked: true),
        OptionModel(name: Option.genres.title, icon: Option.genres.icon, checked: false),
        OptionModel(name: Option.collections.title, icon: Option.collections.icon, checked: false),
        OptionModel(name: Option.authors.title, icon: Option.authors.icon, checked: false),
        OptionModel(name: Option.downloads.title, icon: Option.downloads.icon, checked: true),
        OptionModel(name: Option.homeCollection.title, icon: Option.homeCollection.icon, checked: true),
    ]
    
    @ViewBuilder var body: some View {
        NavigationView {
            List {
                ForEach(options, id: \.self.id) { option in
                    HStack {
                        Image(systemName: option.checked ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(option.checked ? .red : Color(UIColor.systemGray3))
                        Image(systemName: option.icon)
                            .foregroundColor(.red)
                        Text(option.name)
                        Spacer()
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(.some(Color(UIColor.systemGray2)))
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .listStyle(GroupedListStyle())
            }
            .navigationBarTitle("Медиатека", displayMode: .large)
            .navigationBarItems(
                trailing: NavigationLink("Готово", destination: LibraryView())
                    .accentColor(.red)

            )
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListView().navigationBarBackButtonHidden(true)
    }
}
