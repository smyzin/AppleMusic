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
            VStack {
                Text("Ищите свою музыку?")
                    .font(.system(size: 20))
                    .bold()
                Text("Здесь появится купленная Вами в iTunes Store музыка")
                    .padding([.trailing, .leading], 25)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(
                trailing: NavigationLink("Править", destination: Text("Second screen"))
                    .accentColor(.red)
            )
        }
        .accentColor(.red)
        
        Player()
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
