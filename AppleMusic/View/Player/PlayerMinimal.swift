//
//  PlayerMinimal.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 22.01.2022.
//

import SwiftUI

struct PlayerMinimal: View {
    @Binding var isOpen: Bool
    var body: some View {
        HStack {
            HStack {
                Image("Song_cover")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .cornerRadius(Radius.r3)
                    .shadow(color: .gray, radius: Radius.r5, x: 3.5, y: 3.5)
                Text("Primavera - \(isOpen ? "opened":"closed")")
                    .foregroundColor(Color(UIColor.label))
            }
            Spacer()
            HStack {
                Button {
                    print("Play was pressed")
                } label: {
                    Image(systemName: Icons.play.icon)
                        .font(.system(size: Fonts.m.size))
                        .accentColor(.black)
                }
                .padding([.trailing, .vertical], Paddings.xs.size)
                Button {
                    print("Forward was pressed")
                } label: {
                    Image(systemName: Icons.forward.icon)
                        .font(.system(size: Fonts.m.size))
                        .accentColor(.black)
                }
                .padding([.all], Paddings.xs.size)
            }
        }
        .padding([.top, .bottom, .trailing, .leading], Paddings.m.size)
        .background(Color(UIColor.systemGray6))
    }
}

struct PlayerMinimal_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMinimal(isOpen: .constant(false))
    }
}
