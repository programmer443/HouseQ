//
//  SuccessView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct SuccessView: View {
    @State private var isLogin = false
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Image(systemName: "house.fill")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Text("Congrats!")
                .font(.title)
                .foregroundColor(.blue)
            Text("Your account is ready to use")
                .font(.subheadline)
            Spacer()
            NavigationLink(destination: SignInView(), isActive: $isLogin) {
                Button(action: {
                    isLogin = true
                        
                }, label: {
                    HStack {
                        Text("Log in".uppercased())
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(12)
                    }.frame(width: UIScreen.screenWidth * 0.85)
                }).buttonStyle(.borderedProminent).cornerRadius(26)
            }.padding()
        }.navigationBarHidden(true)
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
