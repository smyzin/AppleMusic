//
//  ListView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct ListView: View {
    @State private var options = optionsList
    
    @ViewBuilder var body: some View {
        List {
            ForEach(options, id: \.self.id) { option in
                OptionCell(option: option)
            }
            .onMove(perform: move)
        }
        .listStyle(InsetListStyle())
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle(Tabs.media.title, displayMode: .large)
        .navigationBarItems(
            trailing: NavigationLink("Done", destination: MediaView().navigationBarBackButtonHidden(true))
                .accentColor(.red)
        )
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        options.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
