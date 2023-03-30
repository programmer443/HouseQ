//
//  FilterView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct FilterView: View {
    @State private var isApply: Bool = false
    @State private var isReset: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Filter", rightIcon: "", isRightIcon: false)
            
            HStack{
                    Button(action: {
//                        isBuy = true
                            
                    }, label: {
                        HStack {
                            Text("Buy".uppercased())
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(6)
                        }.frame(width: UIScreen.screenWidth * 0.4)
                    }).buttonStyle(.borderedProminent).cornerRadius(34)
                
                    Button(action: {
//                        isSell = true
                            
                    }, label: {
                        HStack {
                            Text("Sell".uppercased())
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                                .padding(6)
                        }.frame(width: UIScreen.screenWidth * 0.4)
                    }).buttonStyle(.bordered).cornerRadius(34)
            }
            
            Text("Type")
            
            HStack(spacing: 14){
                CategoryView(iconName: "House", iconImage: "house.fill", onClickPage: HousePageView())

                CategoryView(iconName: "Apartment", iconImage: "building.fill", onClickPage: ApartmentPageView())

                CategoryView(iconName: "Villa", iconImage: "building.2.fill", onClickPage: VillaPageView())

            }
            
            HStack{
                Text("Price Range")
                    .font(.title3)
                    .fontWeight(.medium)
                
                Spacer()
                
                Text("$400 - $4,300")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
            }
            
            Text("Area (sqft)")
                .font(.title3)
                .fontWeight(.medium)
            
            Text("Plot Area (sqft)")
                .font(.title3)
                .fontWeight(.medium)
            Spacer()
            HStack{
                    Button(action: {
//                                    isLogin = true
                            
                    }, label: {
                        HStack {
                            Text("Reset".capitalized)
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                                .padding(10)
                        }.frame(width: UIScreen.screenWidth * 0.25  )
                    }).buttonStyle(.bordered).cornerRadius(32)
                
                NavigationLink(destination: DashboardView(), isActive: $isApply) {
                    Button(action: {
                        isApply = true
                            
                    }, label: {
                        HStack {
                            Text("Apply".capitalized)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(10)
                        }.frame(width: UIScreen.screenWidth * 0.5)
                    })
                }.buttonStyle(.borderedProminent).cornerRadius(32)
            }
        }.padding().navigationBarHidden(true)
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
