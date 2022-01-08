//
//  SearchBar.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(.systemGray6))
            HStack {
                Image(systemName: Icons.search.icon)
                    .padding([.leading], Paddings.s.size)
                TextField("Search ...", text: $text)
                    .padding([.top, .bottom], Paddings.xxs.size)
                    .padding([.trailing], Paddings.l.size)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .onTapGesture {
                        self.isEditing = true
                    }
            }
            .foregroundColor(.gray)
        }
        .frame(height: 40)
        .cornerRadius(13)
        
        if isEditing {
            Button(action: {
                self.isEditing = false
                self.text = ""
            }) {
                Text("Cancel")
            }
            .padding(.trailing, Paddings.s.size)
            .transition(.move(edge: .trailing))
            .animation(.default)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
