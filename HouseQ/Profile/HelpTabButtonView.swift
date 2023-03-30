//
//  HelpTabButtonView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 31/08/2022.
//

import SwiftUI

struct HelpTabButtonView: View {
    var image: String
    var title: String
    var color: Color
    var body: some View {
        VStack{
            Image(systemName: image)
                .renderingMode(.template)
                .resizable()
                .frame(width: 30, height: 30)
                .padding()
            Text(title)
                .padding(.horizontal)
        }.foregroundColor(.white).padding(22).background(
            RoundedRectangle(cornerRadius: 14)
                .fill(color)
        )
    }
}

struct HelpTabButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HelpTabButtonView(image: "heart.fill", title: "Instagram", color: Color.red.opacity(0.67))
    }
}
