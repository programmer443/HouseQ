//
//  EditProfileView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct EditProfileView: View {
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Edit Profile", rightIcon: "", isRightIcon: false)
            Image("house1")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Divider()

        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
