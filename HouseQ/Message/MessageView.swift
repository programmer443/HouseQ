//
//  MessageView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct MessageView: View {
    @State private var isChatView: Bool = false
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Message", rightIcon: "magnifyingglass", isRightIcon: true)
            
            VStack{
                NavigationLink(destination: ChatView(name: "Ali"), isActive: $isChatView) {
                    Button(action: {
                        isChatView = true
                    }, label: {
                        ScrollView(.vertical, showsIndicators: false){
                            ForEach(0..<10) { card in
                                MessageCardView(profileImage: "house2", name: "Ali Ahmed", message: "Hi, I am available", time: "10:32", unreadCount: "3")
                                    

                            }
                        }
                    })
                }
            }
        }.navigationBarHidden(true)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
