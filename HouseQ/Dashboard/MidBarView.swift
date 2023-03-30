//
//  MidBarView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct MidBarView<Content: View>: View {
    var title: String
    var buttonText: String
    var destination: Content
    @State private var isContinue: Bool = false

    var body: some View {
        HStack{
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
            
            Spacer()
            
            NavigationLink(destination: destination, isActive: $isContinue) {
                Button(action: {
                    isContinue = true
                }, label: {
                    Text(buttonText)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                })
            }
            
            
        }.padding()
    }
}

struct MidBarView_Previews: PreviewProvider {
    static var previews: some View {
        MidBarView(title: "Nearby your location", buttonText: "See all", destination: PopularPageView())
    }
}
