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
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .cornerRadius(3.0)
                    .shadow(color: .gray, radius: 5, x: 3.5, y: 3.5)
                Text("Primavera")
            }
            Spacer()
            HStack {
                Button {
                    print("Play was pressed")
                } label: {
                    Image(systemName: "play.fill")
                        .font(.system(size: 18))
                        .accentColor(.black)
                }
                .padding([.trailing, .vertical], 8)
                Button {
                    print("Forward was pressed")
                } label: {
                    Image(systemName: "forward.fill")
                        .font(.system(size: 18))
                        .accentColor(.black)
                }
                .padding([.all], 8)
            }
        }
        .padding([.top, .bottom, .trailing, .leading], 10)
        .background(Color(UIColor.systemGray6))
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
