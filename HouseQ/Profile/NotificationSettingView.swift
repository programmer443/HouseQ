//
//  NotificationSettingView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct NotificationSettingView: View {
    @State private var isToggle: Bool = false
    var body: some View {
        VStack{
            TopNavigationBarView(leftIcon: "arrow.backward", pageTitle: "Notification", rightIcon: "", isRightIcon: false)
            
            
            Toggle("Sound", isOn: $isToggle)
            
            Divider()
            
            Toggle("Vibrate", isOn: $isToggle)
            
            Divider()
            
            Toggle("New Tips", isOn: $isToggle)
            
            Divider()
            
            Toggle("New Services", isOn: $isToggle)
            
            Spacer()
        }.padding()
    }
}

struct NotificationSettingView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationSettingView()
    }
}
