//
//  Player.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 05.12.2021.
//

import SwiftUI

struct Player: View {
    @Binding var isOpen: Bool
    @ViewBuilder var body: some View {
        PlayerMinimal(isOpen: $isOpen).onTapGesture(count: 2) {
            isOpen = !isOpen
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player(isOpen: .constant(false))
    }
}
