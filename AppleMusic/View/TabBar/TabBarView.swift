//
//  TabBarView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct TabBarView: View {
    @State var isOpen: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                LibraryView().padding([.bottom], Constants.layoutOffset)
                .tabItem {
                    Image(systemName: Tabs.media.icon)
                    Text(Tabs.media.title)
                }
                RadioView().padding([.bottom], Constants.layoutOffset)
                .tabItem {
                    Image(systemName: Tabs.radio.icon)
                    Text(Tabs.radio.title)
                }
                SearchView().padding([.bottom], Constants.layoutOffset)
                .tabItem {
                    Image(systemName: Tabs.search.icon)
                    Text(Tabs.search.title)
                }
            }.accentColor(.red)
            
            Player(isOpen: $isOpen).offset(x: 0, y: Constants.playerOffset)
            
            if isOpen {
                BottomSheetView(isOpen: $isOpen, maxHeight: 900) {
                    PlayerFull()
                }.edgesIgnoringSafeArea(.all)

            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
