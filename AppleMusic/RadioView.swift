//
//  RadioView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct RadioView: View {
    private let rows = [GridItem(.adaptive(minimum: 300))]
    private let columns = [GridItem(.adaptive(minimum: 400))]
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                Text("Radio view")
            }
            .padding([.leading], 15)
            .navigationBarTitle("Радио", displayMode: .large)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
