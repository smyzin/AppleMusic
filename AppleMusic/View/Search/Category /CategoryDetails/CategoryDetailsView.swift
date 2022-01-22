//
//  CategoryDetails.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 19.12.2021.
//

import SwiftUI

struct CategoryDetails: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var category: Category
    private let rows = [GridItem(.adaptive(minimum: 200))]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                horizontalListLarg
                horizontalListTiny
            }
            .navigationTitle(category.name.capitalized)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                leading: buttonBack,
                trailing: buttonOption
            )
        }
        .padding([.leading, .trailing], Paddings.m.size)
    }
    
    var buttonBack: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: Icons.back.icon)
                .accentColor(.red)
        }
    }
    
    var buttonOption: some View {
        Button(action: {
            print("Option button clicked")
        }) {
            Image(systemName: Icons.ellips.icon)
                .accentColor(Color(UIColor.systemGray5))
                .background(Color(.red))
                .cornerRadius(Radius.r20)
        }
    }
    let namesList = searchedCategoryPlaylist
    var horizontalListLarg: some View {
        FeaturedList(rows: rows, featuredType: false)
    }
    var horizontalListTiny: some View {
        ForEach(namesList, id: \.self.id) { el in
            Divider()
            VStack {
                HStack {
                    Text(el.name)
                        .font(.system(size: Fonts.xl.size))
                        .bold()
                        .foregroundColor(Color(UIColor.label))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("See All")
                        .foregroundColor(.red)
                }
                CategorySearchSmallView(rows: rows)
            }
            .padding([.top, .bottom], Paddings.m.size)
        }
    }
}

struct CategoryDetails_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetails(category: Category(id: UUID(), name: "Some station", image: "Item_sm_1"))
    }
}
