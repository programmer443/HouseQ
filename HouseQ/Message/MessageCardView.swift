//
//  MessageCardView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 02/09/2022.
//

import SwiftUI

struct MessageCardView: View {
    var profileImage: String
    var name: String
    var message: String
    var time: String
    var unreadCount: String
    
    var body: some View {
        HStack(spacing: 16){
            Image(profileImage)
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .frame(height: 80, alignment: .leading)
            VStack(alignment: .leading, spacing: 8){
                HStack {
                    Text(name)
                        .fontWeight(.semibold)
                    Spacer()
                    Text(unreadCount)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Circle().fill(.blue))
                }
                HStack {
                    Text(message)
                        .font(.subheadline)
                    .foregroundColor(.gray)
                    Spacer()
                    Text(time)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
        }.padding().background(RoundedRectangle(cornerRadius: 12).stroke(.gray.opacity(0.2))).padding(.horizontal,12)
    }
}

struct MessageCardView_Previews: PreviewProvider {
    static var previews: some View {
        MessageCardView(profileImage: "house2", name: "Ali Ahmed", message: "Hi, I am available", time: "10:32", unreadCount: "3")
    }
}
