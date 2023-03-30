//
//  HelpView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Help", rightIcon: "", isRightIcon: false)
            
            HStack(spacing: 20){
                HelpTabButtonView(image: "heart.fill", title: "Instagram", color: Color.red.opacity(0.67))

                HelpTabButtonView(image: "heart.fill", title: "Instagram", color: Color.blue.opacity(0.67))

            }
            HStack(spacing: 20){
                HelpTabButtonView(image: "heart.fill", title: "Instagram", color: Color.yellow.opacity(0.67))

                HelpTabButtonView(image: "heart.fill", title: "Instagram", color: Color.red.opacity(0.8))

            }
            
            Spacer()
            
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
