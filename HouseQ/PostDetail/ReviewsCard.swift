//
//  ReviewsCard.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct ReviewsCard: View {
    var name: String
    var date: String
    var comment: String
    var profileImage: String
    
    var body: some View {
        HStack(spacing: 14){
                Image(profileImage)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 10){
                    Text(name)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text(date)
                        .foregroundColor(.gray)
                    Text(comment)
                }
                Spacer()
                Label(title: {Text("5").foregroundColor(.white)}, icon: {Image(systemName: "star.fill").renderingMode(.template).foregroundColor(.white)})
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.blue)
                    )
            }.padding().background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke()
                    .fill(.gray)
            ).padding(12)
    }
}

struct ReviewsCard_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsCard(name: "Owner Name", date: "December 20, 2021", comment: "Comment", profileImage: "house1")
    }
}
