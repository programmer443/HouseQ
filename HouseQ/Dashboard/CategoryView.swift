//
//  TopCategoryListView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct CategoryView<Content: View>: View {
    var iconName: String
    var iconImage: String
    var onClickPage: Content
    @State private var isContinue: Bool = false
    var body: some View {
        
        NavigationLink(destination: onClickPage, isActive: $isContinue) {
            Button(action: {
                isContinue = true
            }, label: {
                VStack {
                    Image(systemName: iconImage)
                        .renderingMode(.none)
                        .foregroundColor(.blue)
                        .padding(18)
                        .background(
                            Circle()
                                .fill(.blue.opacity(0.2))
                        )
                    Text(iconName)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .baselineOffset(0.5)
                    }.padding(28)
                        .background(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke()
                                .fill(.gray.opacity(0.5)))
            })
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(iconName: "Apartment", iconImage: "house.fill", onClickPage: HousePageView())
    }
}
