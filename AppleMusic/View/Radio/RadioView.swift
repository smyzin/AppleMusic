//
//  RadioView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct RadioView: View {
    private let rows = [GridItem(.adaptive(minimum: 200))]
    private let columns = [GridItem(.adaptive(minimum: 300))]
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                Divider()
                FeaturedList(rows: rows, featuredType: true)
                Divider()
                    .padding([.top, .bottom], Paddings.eSmall.size)
                    .foregroundColor(Color(UIColor.systemGray4))
                StationList(columns: columns)
            }
            .padding([.leading], Paddings.m.size)
            .navigationBarTitle(Tabs.radio.title, displayMode: .automatic)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
