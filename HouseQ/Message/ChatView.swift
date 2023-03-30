//
//  ChatView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct ChatView: View {
    var name: String
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: name, rightIcon: "magnifyingglass", isRightIcon: true)
            HStack{
                Spacer()
                Text("Today")
                    .foregroundColor(.black.opacity(0.5))
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(.gray.opacity(0.3)))
                Spacer()
            }
            HStack{
                Spacer()
                ZStack(alignment: .bottomTrailing){
                    Text("Hi! Ali Ahmed, How are you? You fine buddyfads df asdfadsh adsf kaudfku aysdkfuy kaydsfydsakyfkyasdkfyykadsfuk")
                        .multilineTextAlignment(.leading)

                        .padding(8)
                        .padding(.bottom,8)
                        .foregroundColor(.white)
                        .padding(.trailing, 77)
                        .background(
                            Rectangle()
                                .fill(.blue)
                                .padding(.trailing, 12)
                                .cornerRadius(12)
                                .padding(.trailing, -12)
                        )
                    Text("12:12")
                        .foregroundColor(.white)
                        .padding([.trailing, .bottom], 12)
                }
            }.padding(.trailing, 8)
            HStack{
                ZStack(alignment: .trailing){
                    Text("Hi! Ali Ahmed, How are you? Hi! Ali Ahmed, How are you? You fine buddtrttrtrtrtrtryfads df asdfadsh adsf kaudfku aysdkfuy kaydsfydsa kyfkyasd  kfyyk trtttrttrtrtrtrtadsfuk")
                        .multilineTextAlignment(.leading)
                        .padding(8)
                        .padding(.bottom,8)
                        .foregroundColor(.black.opacity(0.8))
                        .padding(.trailing, 77)
                        .background(
                            Rectangle()
                                .fill(.gray.opacity(0.2))
                                .padding(.leading, 12)
                                .cornerRadius(12)
                                .padding(.leading, -12)
                        )
                    Text("12:12")
                        .foregroundColor(.black.opacity(0.5))
                        .padding(.horizontal)
                }
                Spacer()

            }.padding(.leading, 8)
            Spacer()
            
        }.navigationBarHidden(true)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(name: "Ali Ahmed")
    }
}
