//
//  SearchView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(spacing: 14){
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Search", rightIcon: "", isRightIcon: false)
            
            SearchFilterBarView()
            
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "location.fill")
                        .renderingMode(.original)
                    Text("or use my current location")
                        .fontWeight(.semibold)
                }.padding(.horizontal)
                
                HStack {
                    Text("Search Results")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("found")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }.padding(10)
                
                //            ScrollView(.vertical, showsIndicators: false){
                //                PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                //
                //                PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                //
                //                PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                //
                //            }
            }
            
            Spacer().frame(height: 100)
            
            Image("house1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Text("The palce doesn't exit")
                .font(.title2)
                .foregroundColor(.blue)
            
            Text("Please enable your location services for more optimal results.")
                .lineLimit(2)
                .font(.subheadline)
                .frame(width: 240)
                .multilineTextAlignment(.center)
            Spacer()
        }.navigationBarHidden(true)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
