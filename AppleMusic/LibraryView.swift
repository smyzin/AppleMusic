//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            MediaView()
        }
        .navigationBarTitle("Медиатека", displayMode: .large)
        .navigationBarBackButtonHidden(true)
        .accentColor(.red)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .navigationBarBackButtonHidden(true)
    }
}
