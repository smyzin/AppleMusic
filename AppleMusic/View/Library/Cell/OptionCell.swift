//
//  OptionCell.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 11.12.2021.
//

import SwiftUI

struct OptionCell: View {
    @State var option: OptionModel

    var body: some View {
        Button {
            option.checked = !option.checked
        } label: {
            HStack {
                Image(systemName: option.checked ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(option.checked ? .red : Color(UIColor.systemGray3))
                Image(systemName: option.icon)
                    .foregroundColor(.red)
                Text(option.name)
                    .foregroundColor(Color(UIColor.label))
            }
        }.onTapGesture { option.checked = !option.checked }
    }
}

struct OptionCell_Previews: PreviewProvider {
    static var previews: some View {
        OptionCell(option: OptionModel(id: UUID(), name: "Test", icon: "", checked: false))
    }
}
