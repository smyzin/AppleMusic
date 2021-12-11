//
//  OptionCell.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct OptionCell: View {
    var option: OptionModel

    var body: some View {
        HStack {
            Image(systemName: option.checked ? "checkmark.circle.fill" : "circle")
                .foregroundColor(option.checked ? .red : Color(UIColor.systemGray3))
            Image(systemName: option.icon)
                .foregroundColor(.red)
            Text(option.name)
            Spacer()
            Image(systemName: "line.horizontal.3")
                .foregroundColor(.some(Color(UIColor.systemGray2)))
        }
    }
}

struct OptionCell_Previews: PreviewProvider {
    static var previews: some View {
        OptionCell(option: OptionModel(id: UUID(), name: "Test", icon: "", checked: false))
    }
}
