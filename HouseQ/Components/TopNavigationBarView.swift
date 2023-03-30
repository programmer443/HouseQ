//
//  TopNavigationBarView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct TopNavigationBarView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var leftIcon: String
    var pageTitle: String
    var rightIcon: String
    var isRightIcon: Bool
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: leftIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(.blue)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
            Text(pageTitle)
                .font(.title2)
            Spacer()
            isRightIcon ?
            Image(systemName: rightIcon)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(.blue)
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.blue.opacity(0.2))
                )
//                .onTapGesture {
//                    self.presentationMode.wrappedValue.dismiss()
//                }
            : nil
        }.padding()
    }
}

struct TopNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Forgot Password", rightIcon: "heart", isRightIcon: true)
    }
}
