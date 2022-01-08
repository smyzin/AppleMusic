//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct LibraryView: View {
    @State private var editMode = EditMode.inactive
    
    var body: some View {
        NavigationView {
//            if self.editMode == .active {
////                NavigationLink(
////                    destination: ListView()) {
////                    Text("Edit")
////                }
////                .padding()
//                ListView()
//            } else {
//                NavigationLink(
//                    destination: MediaView()) {
//                    Text("Done")
//                }
//                .padding()
                MediaView()
//            }
        }
        .navigationBarTitle(Tabs.media.title, displayMode: .large)
        .navigationBarBackButtonHidden(true)
//        .environment(\.editMode, $editMode)
        .accentColor(.red)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .navigationBarBackButtonHidden(true)
    }
}
