//
//  GalleryView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct GalleryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Gallery", rightIcon: "", isRightIcon: false)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<5){ _ in
                    HStack(spacing: 14){
                        Image("house1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .frame(height: 120)
                            .padding(.vertical, 6)
                        Image("house2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .frame(height: 120)
                            
                    }
                }
            }
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Label(title: {
                        Text("Back".capitalized)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                            .padding(12)
                    }, icon: {
                        Image(systemName: "arrow.backward")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                    })
                    
                }.frame(width: UIScreen.screenWidth * 0.85)
            }).buttonStyle(.bordered).cornerRadius(26)
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
