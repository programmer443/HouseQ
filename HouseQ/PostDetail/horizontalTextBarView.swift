//
//  horizontalTextBarView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 29/08/2022.
//

import SwiftUI

struct horizontalTextBarView: View {
    var key: String
    var value: String
    var body: some View {
        HStack{
            Text(key)
                .foregroundColor(.gray)
            Spacer()
            Text(value)
                .fontWeight(.semibold)
        }
    }
}
