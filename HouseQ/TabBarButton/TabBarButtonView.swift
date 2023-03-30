//
//  TabBarButtonView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 30/08/2022.
//

import SwiftUI

struct TabBarListView: View {
    @Binding var currentTab: Int
    
    var tabBarTexts: [String]
    var body: some View {
            HStack(spacing: 30) {
                ForEach(Array(zip(self.tabBarTexts.indices,
                                  self.tabBarTexts)),
                        id: \.0,
                        content: {
                    index, name in
                    TabBarButtonView(currentTab: self.$currentTab,
                                 btnText: name,
                               tab: index)
                    
                })
            }
    }
}


struct TabBarButtonView: View {
    @Binding var currentTab: Int
//    let namespace: Namespace.ID
    
    var btnText: String
    var tab: Int
    
    var body: some View {
        Button {
            self.currentTab = tab
        } label: {
            ZStack(alignment: .trailing){
                
                if currentTab == tab {
                    HStack{
                        Text(btnText)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 8.0)
                            .padding(.horizontal, 16)
                            .background(
                                Capsule()
                                    .fill(.blue)
                            )
                    }
                    
//                        .frame(width: 30)
                        
                } else {
                    Text(btnText)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.blue)
                        .padding(.vertical, 8.0)
                        .padding(.horizontal, 16)
                        .background(
                            Capsule()
                                .stroke(.blue, lineWidth: 2)
                        )
                    
                }
                
//                Image("house1")
            }
            .animation(.spring(), value: self.currentTab)
        }
        .buttonStyle(.plain)
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
//        TabBarButtonView(currentTab: .constant(1))
        TabBarListView(currentTab: .constant(0), tabBarTexts: ["All", "House", "Apartment", "Villa"])
    }
}
