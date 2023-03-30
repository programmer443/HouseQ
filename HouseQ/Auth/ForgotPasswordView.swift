//
//  ForgotPasswordView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var isContinue = false
    var body: some View {
        VStack(spacing: 20){
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Forgot Password", rightIcon: "", isRightIcon: false)
            
            Text("Select which contact details should we use to reset your password")
            ForgotOptionListView(icon: "text.bubble.fill", title: "+92432****23", channel: "SMS")
            ForgotOptionListView(icon: "envelope.fill", title: "adf***@gmail.com", channel: "Email")
            
            Spacer()
            NavigationLink(destination: OTPSendView(), isActive: $isContinue) {
                Button(action: {
                    isContinue = true
                        
                }, label: {
                    HStack {
                        Text("Continue".uppercased())
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(12)
                    }.frame(width: UIScreen.screenWidth * 0.85)
                }).buttonStyle(.borderedProminent).cornerRadius(26)
            }.padding()
        }.navigationBarHidden(true)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
