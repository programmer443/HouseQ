//
//  FavoriteView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct FavoriteView: View {
    @State private var currentTab = 0
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "House", rightIcon: "magnifyingglass", isRightIcon: true)

            TabBarListView(currentTab: $currentTab, tabBarTexts: ["All", "House", "Apartment", "Villa"])
            Spacer()
                .frame(height: 200)
            Image("house2")
                .resizable()
                .clipShape(Circle())
                .frame(height: 200)
            Text("You don't have a faviorite")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            Spacer()
            
        }.navigationBarHidden(true)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
