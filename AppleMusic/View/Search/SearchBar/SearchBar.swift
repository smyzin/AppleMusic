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
                Image(systemName: "magnifyingglass")
                    .padding([.leading], 10)
                TextField("Search ...", text: $text)
                    .padding([.top, .bottom], 7)
                    .padding([.trailing], 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .onTapGesture {
                        self.isEditing = true
                    }
            }
            .foregroundColor(.gray)
//            .padding([.leading], 10)
        }
        .frame(height: 40)
        .cornerRadius(13)
//        .padding()
        
        if isEditing {
            Button(action: {
                self.isEditing = false
                self.text = ""
            }) {
                Text("Cancel")
            }
            .padding(.trailing, 10)
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
