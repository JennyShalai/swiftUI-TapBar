//
//  StickyHeader.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct StickyHeader: View {
    var body: some View {
        // MARK: Sticky Header
        GeometryReader { view in
        
            Image("events")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.green)
                .overlay(alignment: .bottom) {
                    Text("Activity")
                        .foregroundColor(.black)
                        .font(.title)
                        .fontWeight(.semibold)
                        
                }
        }
        .frame(height: UIScreen.main.bounds.height / 4.5)
        
    }
}

struct StickyHeader_Previews: PreviewProvider {
    static var previews: some View {
        StickyHeader()
    }
}
