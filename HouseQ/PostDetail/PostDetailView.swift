//
//  PostDetailView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct PostDetailView: View {
    @State private var isBuy: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack(alignment: .top){
                    Image("house1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "", rightIcon: "heart", isRightIcon: true)
                        .padding(.vertical)
                }
                HStack{
                    Text("Appartment")
                        .foregroundColor(.blue)
                        .padding(4)
                        .background(
                            Capsule()
                                .stroke()
                                .fill(.blue)
                        )
                    Spacer()
                    Label(title: {Text("4.5 (1123 reviews)").fontWeight(.semibold)}, icon: {Image(systemName: "star.fill").renderingMode(.template).foregroundColor(.yellow)})
                    Text("")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }.padding()
                VStack(alignment: .leading, spacing: 12){
                    Text("Ownet Apartment")
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "location.fill")
                            .renderingMode(.none)
                            .foregroundColor(.blue)
                        Text("Lahore, Punjab")
                        Spacer()
                    }
                    HStack{
                        Label(title: {Text("4 beds").fontWeight(.semibold)}, icon: {Image(systemName: "bed.double.fill")})
                        
                        Label(title: {Text("2 beds").fontWeight(.semibold)}, icon: {Image(systemName: "bed.double.fill")})
                        
                        Label(title: {Text("1345 sqft").fontWeight(.semibold)}, icon: {Image(systemName: "arrow.up.and.down.and.arrow.left.and.right")})
                    }
                    Divider()
                        .padding()
                    HStack{
                        Image("house1")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 16){
                            Text("Owner Name")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text("Partner")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "text.bubble.fill")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                            .font(.title2)
                            .padding(18)
                            .background(
                                Circle()
                                    .fill(.blue.opacity(0.1))
                            )
                        Image(systemName: "phone.fill")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                            .font(.title2)
                            .padding(18)
                            .background(
                                Circle()
                                    .fill(.blue.opacity(0.1))
                            )
                        
                    }
                    VStack(alignment: .leading, spacing: 12){
                        Text("Overview")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.")
                            .multilineTextAlignment(.leading)
                            .lineLimit(4)
                        Text("Gallery")
                            .font(.title3)
                            .fontWeight(.semibold)
                        HStack {
                            ForEach(0..<3){ _ in
                                Image("house1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .frame(height: 80)
                            }
                        }
                        Text("Location")
                            .font(.title3)
                            .fontWeight(.semibold)
                        RoundedRectangle(cornerRadius: 18)
                            .fill(.gray)
                            .frame(width: UIScreen.screenWidth * 0.8,height: 200)
                            
                        Text("Features & Facilities")
                            .font(.title3)
                            .fontWeight(.semibold)
                        HStack{
                            Button(action: {
//                                isNotification = true
                            }, label: {
                                Text("Area & Lot")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(
                                        Capsule()
                                            .fill(.blue)
                                    )
                            })
                        
                            Button(action: {
//                                isNotification = true
                            }, label: {
                                Text("Interior")
                                    .foregroundColor(.blue)
                                    .padding(10)
                                    .background(
                                        Capsule()
                                            .fill(.white)
                                    )
                            })
                            
                            Button(action: {
//                                isNotification = true
                            }, label: {
                                Text("Exterior")
                                    .foregroundColor(.blue)
                                    .padding(10)
                                    .background(
                                        Capsule()
                                            .fill(.white)
                                    )
                            })
                            
                            
                        }.padding(12)
                            .background(
                                Capsule()
                                    .fill(.blue.opacity(0.1))
                            )
                        VStack(spacing: 14){
                            horizontalTextBarView(key: "Status", value: "For Sale")
                            horizontalTextBarView(key: "Living Area", value: "1,324 sqft")
                            horizontalTextBarView(key: "Type", value: "Modern")
                            horizontalTextBarView(key: "Year Built", value: "2014")
                            horizontalTextBarView(key: "Lifestyles", value: "Futuristic")
                            horizontalTextBarView(key: "Architecture Styles", value: "Contemporary")
                            horizontalTextBarView(key: "View Description", value: "Urban")
                        }
                    }
                                    
                }.padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 0){
                    Text("Price")
                        .font(.caption2)
                    HStack{
                        Text("$ 2,345")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                        Spacer()
                        NavigationLink(destination: ContentView(), isActive: $isBuy) {
                            Button(action: {
                                isBuy = true
                                    
                            }, label: {
                                HStack {
                                    Text("buy".capitalized)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(12)
                                }.frame(width: UIScreen.screenWidth * 0.5)
                            })
                        }.buttonStyle(.borderedProminent).cornerRadius(32)
                    }
                }.padding()
                
                Spacer()
            }.ignoresSafeArea()
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView()
    }
}
