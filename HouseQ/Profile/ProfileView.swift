//
//  ProfileView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            HStack(spacing: 16){
                Image("house1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 8){
                        Text("Profile Name")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("email@gmail.com")
                            .foregroundColor(.gray)
                        Text("Location")
                            .foregroundColor(.gray)
                    }
                }
            VStack{
                Divider()
                HStack{
                    Image(systemName: "person.fill")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                        .padding(18)
                        .background(
                            Circle()
                                .fill(.blue.opacity(0.1))
                        )
                    Text("Edit Profile")
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                }.padding()
                
                Spacer()
            }
            
        }.navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
