//
//  CreatorView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct CreatorView: View {
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 15, height: 15)
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.purple)
            
            Text("kris.eth")
                .fontWeight(.semibold)
            
            Text("2 days ago")
                .foregroundColor(.gray)
            Spacer() // to push content to the left edge
        }
    }
}

struct CreatorView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorView()
    }
}
