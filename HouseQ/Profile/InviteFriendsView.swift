//
//  InviteFriendsView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct InviteFriendsView: View {
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Contact us", rightIcon: "", isRightIcon: false)
            
            HStack(spacing: 16){
                Image("house3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80, alignment: .leading)
                VStack(alignment: .leading, spacing: 10){
                    Text("Ali Ahmed")
                        .fontWeight(.semibold)
                    Text("+2354 2345 23")
                        .font(.subheadline)
                }
                Spacer()
                
                
            }
            Spacer()

        }
    }
}

struct InviteFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        InviteFriendsView()
    }
}
