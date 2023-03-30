//
//  ScheduleCallView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct ScheduleCallView: View {
    @State private var isCall: Bool = false
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Schedule a Call", rightIcon: "", isRightIcon: false)
            
            RoundedRectangle(cornerRadius: 12)
                .fill(.gray)
                .frame(width: UIScreen.screenWidth * 0.85, height: 300)
            
            HStack{
                Text("Time")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading){
                Text("Enter Details")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            NavigationLink(destination: SignInView(), isActive: $isCall) {
                Button(action: {
                    isCall = true
                }, label: {
                    HStack {
                        Text("Schedule".capitalized)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(12)
                    }.frame(width: UIScreen.screenWidth * 0.85)
                }).buttonStyle(.borderedProminent).cornerRadius(26)
            }

            

        }
    }
}

struct ScheduleCallView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleCallView()
    }
}
