//
//  FAQView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct FAQView: View {
    @State private var currentTab = 0
    @State private var isExpandable = false
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "FAQ", rightIcon: "", isRightIcon: false)
            
            ScrollView(.horizontal, showsIndicators: false) {
                TabBarListView(currentTab: $currentTab, tabBarTexts: ["General", "Login", "Account", "Griya", "Tips"])
            }
            VStack(alignment: .leading){
                HStack{
                    Text("What is Griya?")
                    Spacer()
                    Image(systemName: "arrowtriangle.down.fill")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 14, height: 6)
                        .foregroundColor(.blue)
                }
                isExpandable ?
                VStack(alignment: .leading){
                    Divider()
                        .foregroundColor(.gray)
                    Text("Description of the question")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
                : nil
            }.padding().background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray)
            ).padding(.horizontal)
                .onTapGesture {
                    isExpandable.toggle()
                }
            Spacer()
        }
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
