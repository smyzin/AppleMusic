//
//  CategorySearchTop.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 09.01.2022.
//

import SwiftUI

struct CategorySearchTop: View {
    @State private var isGlobalSearch: Bool = true
    var body: some View {
        HStack {
            Button {
                isGlobalSearch = true
            } label: {
                Text("Apple Music")
                    .padding(Paddings.xxs.size)
                    .frame(maxWidth: .infinity)
                    .padding([.trailing, .leading], Paddings.xs.size)
                    .foregroundColor(Color(UIColor.label))
                    .background(Color(isGlobalSearch ? UIColor.systemGray6 : UIColor.systemGray3))
            }
            .cornerRadius(Radius.r10)
            Button {
                isGlobalSearch = false
            } label: {
                Text("Your Library")
                    .padding(Paddings.xxs.size)
                    .frame(maxWidth: .infinity)
                    .padding([.trailing, .leading], Paddings.xs.size)
                    .foregroundColor(Color(UIColor.label))
                    .background(Color(!isGlobalSearch ? UIColor.systemGray6 : UIColor.systemGray3))
            }
            .cornerRadius(Radius.r10)
            .frame(maxWidth: .infinity)
        }
        .background(Color(UIColor.systemGray3))
        .cornerRadius(Radius.r10)
    }
}

struct CategorySearch_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchTop()
    }
}
