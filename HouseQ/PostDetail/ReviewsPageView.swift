//
//  ReviewsPageView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct ReviewsPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Reviews", rightIcon: "line.3.horizontal.decrease", isRightIcon: true)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<5){_ in
                    ReviewsCard(name: "Owner Name", date: "December 20, 2021", comment: "Comment", profileImage: "house1")
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

struct ReviewsPageView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsPageView()
    }
}
