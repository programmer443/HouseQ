//
//  OTPSendView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct OTPSendView: View {
    @State private var isContinue = false
    @State private var otp: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack(spacing: 20){
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Forgot Password", rightIcon: "", isRightIcon: false)

            Spacer()
            Text("Code has been send to +92234***23")
            
            AEOTPView(
                text: $otp,
                slotsCount: 4,
                width: 340,
                height: 62,
                otpDefaultCharacter: "",
                otpBackgroundColor: .clear,
                otpFilledBackgroundColor: .clear,
                otpCornerRaduis: 14,
                otpDefaultBorderColor: UIColor(Color.gray),
                otpFilledBorderColor: UIColor(Color.blue),
                otpDefaultBorderWidth: 1,
                otpFilledBorderWidth: 1,
                otpTextColor: UIColor(Color.black),
                otpFontSize: 12,
                otpFont: UIFont.systemFont(ofSize: 34),
                isSecureTextEntry: false,
                onCommit: {}
            ).padding()
                .shadow(color: .blue.opacity(0.2), radius: 1, x: -1, y: 2)
            
            Text("Resend code in 56s")
           
            
            Spacer()
            NavigationLink(destination: ResetPasswordView(), isActive: $isContinue) {
                Button(action: {
                    isContinue = true
                        
                }, label: {
                    HStack {
                        Text("Verify".uppercased())
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(12)
                    }.frame(width: UIScreen.screenWidth * 0.85)
                }).buttonStyle(.borderedProminent).cornerRadius(26)
            }.padding()
        }.navigationBarHidden(true)
    }
}

struct OTPSendView_Previews: PreviewProvider {
    static var previews: some View {
        OTPSendView()
    }
}
