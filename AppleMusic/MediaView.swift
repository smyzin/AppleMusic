//
//  MediaView.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct MediaView: View {
    var body: some View {
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
        .navigationBarTitle("Медиатека", displayMode: .large)
        .navigationBarItems(
            trailing: NavigationLink("Править", destination: ListView().navigationBarBackButtonHidden(true))
                .accentColor(.red)
        )
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
