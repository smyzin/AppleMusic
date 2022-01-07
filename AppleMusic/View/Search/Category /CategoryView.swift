//
//  CategoryView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct CategoryView: View {
    private let columns = [GridItem(.adaptive(minimum: 160))]
    
    var body: some View {
        NavigationView {
            CategoryListView(columns: columns)
            NavigationLink(destination: CategoryDetails()) {
                Text("Do Something")
            }
            .navigationBarTitle(Tabs.search.title, displayMode: .automatic)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
