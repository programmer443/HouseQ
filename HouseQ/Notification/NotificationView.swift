//
//  NotificationView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Notification", rightIcon: "heart", isRightIcon: true)
            ScrollView(.vertical, showsIndicators: false){
                NotificationCardView(actionDate: "Today, Dec 23, 2030", actionTitle: "Payment Successfull!", actionDescription: "You have successfully made a payment fot ownet Apartment", actionImage: "house1", noOfAction: 2)
                
                NotificationCardView(actionDate: "Yesterday, Dec 23, 2030", actionTitle: "Payment Successfull!", actionDescription: "You have successfully made a payment fot ownet Apartment", actionImage: "house1", noOfAction: 1)
                
                NotificationCardView(actionDate: "Monday, Dec 23, 2030", actionTitle: "Payment Successfull!", actionDescription: "You have successfully made a payment fot ownet Apartment", actionImage: "house1", noOfAction: 2)
            }.padding()
        }.navigationBarHidden(true)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
