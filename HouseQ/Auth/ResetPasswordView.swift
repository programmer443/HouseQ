//
//  ResetPasswordView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var isContinue = false
    @State private var password: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack(spacing: 20){
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Reset Password", rightIcon: "", isRightIcon: false)

            Text("Create a new password")
            VStack(alignment: .leading, spacing: 20){
                Text("New Password")
                    .foregroundColor(.black)
                TextField("*********", text: $password)
                Text("Confire New Password")
                    .foregroundColor(Color.black)
                SecureField("*********", text: $password)
            }.textFieldStyle(.roundedBorder)
            .padding(25)
            Spacer()

            
            
           
           
            
            Spacer()
            NavigationLink(destination: SuccessView(), isActive: $isContinue) {
                Button(action: {
                    isContinue = true
                        
                }, label: {
                    HStack {
                        Text("Save".uppercased())
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(12)
                    }.frame(width: UIScreen.screenWidth * 0.85)
                }).buttonStyle(.borderedProminent).cornerRadius(26)
            }.padding()
        }.navigationBarHidden(true)
    }
}

struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}
