//
//  AboutUsView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "About us", rightIcon: "", isRightIcon: false)
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 24) {
                    Text("Intro")
                        .font(.title2)
                    .fontWeight(.semibold)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                    Text("Intro")
                        .font(.title2)
                    .fontWeight(.semibold)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
            }.padding()
            Spacer()
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
