//
//  DashboardView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct DashboardView: View {
    @State private var isNotification: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        HStack {
                            Text("Location")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                        }.font(.caption)
                            .foregroundColor(.gray)
                        HStack {
                            Image(systemName: "location.fill")
                                .renderingMode(.original)
                            Text("Lahore, Punjab")
                                .fontWeight(.semibold)
                        }
                    }
                    Spacer()
                    
                    NavigationLink(destination: NotificationView(), isActive: $isNotification) {
                        Button(action: {
                            isNotification = true
                        }, label: {
                            Image(systemName: "bell.fill")
                                .renderingMode(.template)
                                .foregroundColor(.blue)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(.blue.opacity(0.2))
                                )
                        })
                    }
                    
                }.padding()
                
                SearchFilterBarView()
                
                HStack(spacing: 20){
                    CategoryView(iconName: "House", iconImage: "house.fill", onClickPage: HousePageView())

                    CategoryView(iconName: "Apartment", iconImage: "building.fill", onClickPage: ApartmentPageView())

                    CategoryView(iconName: "Villa", iconImage: "building.2.fill", onClickPage: VillaPageView())

                }
                
                MidBarView(title: "Popular", buttonText: "See all", destination: PopularPageView())

                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                        PostView(image: "house2", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                        PostView(image: "house3", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                    }
                }
                
                MidBarView(title: "Nearby your location", buttonText: "See all", destination: PopularPageView())

                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                        PostView(image: "house2", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                        PostView(image: "house3", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
                    }
                }
            }
        }.navigationBarHidden(true)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
