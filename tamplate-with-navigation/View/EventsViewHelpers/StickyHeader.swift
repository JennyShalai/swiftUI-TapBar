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
            let minY = view.frame(in: .named("SCROLL")).minY
            let size = view.size
            let hight = abs(size.height + minY)
            
            Image("events")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: hight, alignment: .top)
                .offset(y: -minY)
                .background(Color.green)
        }
        .frame(height: UIScreen.main.bounds.height / 4.5)
        
    }
}

struct StickyHeader_Previews: PreviewProvider {
    static var previews: some View {
        StickyHeader()
    }
}
