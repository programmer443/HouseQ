//
//  SearchFilterView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 26/08/2022.
//

import SwiftUI

struct SearchFilterBarView: View {
    @State private var search: String = ""
    @State private var isFilter: Bool = false

    var body: some View {
        NavigationLink(destination: FilterView(), isActive: $isFilter) {
            HStack(spacing: 14){
                TextField("Search",text: $search)
                    .textFieldStyle(.roundedBorder)
                
                Image(systemName: "line.3.horizontal.decrease")
                    .renderingMode(.template)
                    .foregroundColor(.blue)
                    .padding(14)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.blue.opacity(0.1))
                    )
                    .onTapGesture {
                        isFilter = true
                    }
            }.padding([.horizontal, .bottom])
        }
        
    }
}

struct SearchFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilterBarView()
    }
}
