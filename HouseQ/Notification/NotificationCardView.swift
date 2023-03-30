//
//  NotificationCardView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct NotificationCardView: View {
    var actionDate: String
    var actionTitle: String
    var actionDescription: String
    var actionImage: String
    var noOfAction: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(actionDate)
                .fontWeight(.semibold)
                .foregroundColor(.black.opacity(0.6))
            ForEach(0..<noOfAction) { _ in
                HStack(spacing: 16){
                    Image(actionImage)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 16){
                        Text(actionTitle)
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text(actionDescription)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }.padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .fill(.gray)
                    )
            }
        }
    }
}

struct NotificationCardView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCardView(actionDate: "Today, Dec 23, 2030", actionTitle: "Payment Successfull!", actionDescription: "You have successfully made a payment fot ownet Apartment", actionImage: "house1", noOfAction: 2)
    }
}
