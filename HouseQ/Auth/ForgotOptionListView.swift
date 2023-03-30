//
//  ForgotOptionListView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct ForgotOptionListView: View {
    @State var icon: String
    @State var title: String
    @State var channel: String
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.blue)
                .frame(height: 24)
                .padding(20)
                .background(
                    Circle()
                        .fill(.blue.opacity(0.1))
                )
            VStack(alignment: .leading, spacing: 16){
                Text("via \(channel):")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(title)
            }
            Spacer()
        }.padding(26)
            .background(
                RoundedRectangle(cornerRadius: 22)
//                    .stroke()
                    .fill(.white)
                    .shadow(color: .gray, radius: 1, x: 0, y: 0)
            ).padding(.horizontal)
    }
}

