//
//  HousePageView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct HousePageView: View {
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "House", rightIcon: "magnifyingglass", isRightIcon: true)
            
            ScrollView(.vertical, showsIndicators: false){
                PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")

                PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")

                PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")

            }
        }.navigationBarHidden(true)
    }
}

struct HousePageView_Previews: PreviewProvider {
    static var previews: some View {
        HousePageView()
    }
}
