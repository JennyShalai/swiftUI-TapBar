//
//  StickyHeader.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct StickyHeader: View {
    var body: some View {
        
        Image("events")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(alignment: .bottom) {
                Text("Activity")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.semibold)
                    
            }
            .frame(height: 250)
    }
}

struct StickyHeader_Previews: PreviewProvider {
    static var previews: some View {
        StickyHeader()
    }
}
