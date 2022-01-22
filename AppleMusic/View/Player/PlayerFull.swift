//
//  PlayerFull.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.01.2022.
//

import SwiftUI
import MediaPlayer

struct PlayerFull: View {
    private let songTime: Double = 442.0
    @State private var time: Double = 0.0
    @State private var volume: Double = 50.0
    @State private var isEditing = false
    @State private var isEditingVolume = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("Song_cover")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .cornerRadius(Radius.r7)
                .shadow(color: .gray, radius: Radius.r7, x: 3.5, y: 3.5)
            Spacer()
            HStack {
                VStack {
                    Text("Primavera")
                        .font(.system(size: Fonts.m.size))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                        .foregroundColor(Color(UIColor.systemGray6))
                    Text("By Ludovico Einaudi - Ludovico Einaudi")
                        .font(.system(size: Fonts.s.size))
                        .foregroundColor(Color(UIColor.systemGray4))
                        .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                }
                
                Button {
                    print("Options was pressed")
                } label: {
                    Image(systemName: Icons.ellips.icon)
                        .font(.system(size: Fonts.xxl.size))
                        .foregroundColor(Color(UIColor.systemGray))
                        .background(Color(UIColor.systemGray5))
                        .cornerRadius(Radius.r20)
                }
            }.padding([.vertical], Paddings.m.size)
            
            VStack {
                Slider (
                    value: $time,
                    in: 0...songTime,
                    step: 1,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
                .accentColor(Color(UIColor.systemGray6))
                .frame(maxHeight: 25, alignment: .center)
                HStack {
                    Text(
                        "\(Int(time) / 60 < 10 ? "0\(Int(time) / 60)" : "\(Int(time) / 60)"):\(Int(time) % 60 < 10 ? "0\(Int(time) % 60)" : "\(Int(time) % 60)")"
                    )
                    .font(.system(size: Fonts.xxs.size))
                    .foregroundColor(Color(UIColor.systemGray2))
                    Spacer()
                    Text("-\(Int(songTime - time) / 60 < 10 ? "0\(Int(songTime - time) / 60)" : "\(Int(songTime - time) / 60)"):\(Int(songTime - time) % 60 < 10 ? "0\(Int(songTime - time) % 60)" : "\(Int(songTime - time) % 60)")"
                    )
                    .font(.system(size: Fonts.xxs.size))
                    .foregroundColor(Color(UIColor.systemGray2))
                }.padding([.horizontal], Paddings.s.size)
            }
            
            
            HStack {
                Spacer()
                Button {
                    print("Backward was pressed")
                } label: { Image(systemName: Icons.backward.icon) }
                Spacer()
                Button {
                    print("Play was pressed")
                } label: { Image(systemName: Icons.play.icon) }
                Spacer()
                Button {
                    print("Forward was pressed")
                } label: { Image(systemName: Icons.forward.icon) }
                Spacer()
            }
            .padding([.vertical], Paddings.xl.size)
            .foregroundColor(Color(UIColor.systemGray6))
            .font(.system(.largeTitle))
            
            HStack {
                Image(systemName: Icons.speakerMute.icon)
                
                Slider (
                    value: $volume,
                    in: 0...100,
                    step: 1,
                    onEditingChanged: { editing in
                        isEditingVolume = editing
                    }
                )
                Image(systemName: Icons.speakerFull.icon)
            }
            .padding([.vertical], Paddings.m.size)
            .font(.system(size: Fonts.xxs.size))
            .accentColor(Color(UIColor.systemGray6))
            .foregroundColor(Color(UIColor.systemGray3))
            
            HStack {
                Spacer()
                Button {
                    print("Lyrics was pressed")
                } label: { Image(systemName: Icons.quote.icon) }
                Spacer()
                Button {
                    print("AirPlay was pressed")
                } label: { Image(systemName: Icons.airplay.icon) }
                Spacer()
                Button {
                    print("List was pressed")
                } label: { Image(systemName: Icons.list.icon) }
                Spacer()
            }
            .padding([.vertical], Paddings.m.size)
            .foregroundColor(Color(UIColor.systemGray5))
            .font(.system(size: Fonts.l.size))
        }
        .padding([.trailing, .leading], Paddings.s.size)
        .padding([.top, .bottom])
        .background(Image("Song_cover").blur(radius: 200.0))
    }
}

struct PlayerFull_Previews: PreviewProvider {
    static var previews: some View {
        PlayerFull()
    }
}
