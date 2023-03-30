//
//  ButtomNavigationBarView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 01/09/2022.
//

import SwiftUI

struct ButtomNavigationBarView: View {
    var body: some View {
        NavigationView {
            TabView{
                    DashboardView()
                        .tabItem{
                            ZStack {
                                Label(title: {Text("Home")}, icon:  {
                                Image(systemName: "house")
                                    .renderingMode(.template)
                                    .foregroundColor(.blue)
                                    
                                })
                            }
                    }.navigationBarHidden(true).navigationTitle("")
                    SearchView()
                        .tabItem{
                        Label(title: {Text("Search")}, icon:  {
                            Image(systemName: "magnifyingglass")
                                .renderingMode(.template)
                                .foregroundColor(.blue)
                        })
                    }.navigationBarHidden(true).navigationTitle("")
                    FavoriteView()
                        .tabItem{
                        Label(title: {Text("Favorite")}, icon:  {
                            Image(systemName: "heart")
                                .renderingMode(.template)
                                .foregroundColor(.blue)
                        })
                    }.navigationBarHidden(true).navigationTitle("")
                    MessageView()
                        .tabItem{
                        Label(title: {Text("Messages")}, icon:  {
                            Image(systemName: "bubble.left")
                                .renderingMode(.template)
                                .foregroundColor(.blue)
                        })
                    }.navigationBarHidden(true).navigationTitle("")
                    ProfileView()
                        .tabItem{
                        Label(title: {Text("Person")}, icon:  {
                            Image(systemName: "person.fill")
                                .renderingMode(.template)
                                .foregroundColor(.blue)
                        })
                        }.navigationBarHidden(true).navigationTitle("")
            }.background(.brown).navigationBarHidden(true)
        }.navigationBarHidden(true)

    }
}

struct ButtomNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        ButtomNavigationBarView()
    }
}
