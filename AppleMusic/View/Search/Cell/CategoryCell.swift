//
//  CategoryCell.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct CategoryCell: View {
    var cell: Category
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(cell.image)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 140)
                .colorMultiply(Color.random)
                .cornerRadius(7.0)
                .overlay(ImageOverlay(name: cell.name), alignment: .bottomLeading)
        }
    }
}

struct ImageOverlay: View {
    var name: String
    
    var body: some View {
        ZStack {
            Text(name.capitalized)
                .font(.system(size: 16))
                .fontWeight(.bold)
                .padding(6)
                .foregroundColor(Color(.systemBackground))
        }
        .padding(5)
    }
}

struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(cell: Category(id: UUID(), name: "Some station", image: "Item_sm_1"))
    }
}
