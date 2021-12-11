//
//  Player.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct Player: View {
    var body: some View {
        HStack {
            HStack {
                Image("Song_cover")
                    .resizable()
                    .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fit)
                    .aspectRatio(1.8, contentMode: .fit)
                Text("Primavera")
            }
            Spacer()
            HStack {
                Image(systemName: "play.fill")
                    .padding([.trailing])
                Image(systemName: "forward.fill")
            }
            .padding()
        }
        .background(Color(UIColor.systemGray6))
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
