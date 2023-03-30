//
//  PostView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct PostView: View {
    var image: String
    var title: String
    var city: String
    var state: String
    @State private var isLike: Bool = false
    var price: Double
    var category: String
    
    var body: some View {
        VStack(alignment: .leading){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .clipShape(RoundedRectangle(cornerRadius: 18))
            HStack{
                Text(category)
                    .foregroundColor(.blue)
                    .padding(4)
                    .background(
                        Capsule()
                            .stroke()
                            .fill(.blue)
                    )
                Spacer()
                Text("$ \(price)")
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
            }
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
            HStack{
                Image(systemName: "location.fill")
                    .renderingMode(.none)
                    .foregroundColor(.blue)
                Text("\(city), \(state)")
                Spacer()
                Image(systemName: isLike ? "heart.fill" : "heart")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(isLike ? .red : .blue)
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        isLike.toggle()
                    }
            }
        }.padding(.horizontal, 14)
            .frame(height: UIScreen.screenHeight * 0.36)
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(.gray.opacity(0.1)))
            .padding()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(image: "house1", title: "ownet Apartment", city: "Lahore", state: "Punjab", price: 123, category: "Apartment")
    }
}
