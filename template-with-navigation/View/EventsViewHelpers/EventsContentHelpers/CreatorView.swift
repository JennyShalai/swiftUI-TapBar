//
//  CreatorView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct CreatorView: View {
    
    var event: Event
    
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 15, height: 15)
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.purple)
            
            Text(event.author)
                .fontWeight(.semibold)
            
            Text("2 days ago")
                .foregroundColor(.gray)
            Spacer() // to push content to the left edge
        }
         .padding(.leading, 25)
    }
}

struct CreatorView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorView(event: Event(type: "vote", author: "evgeshaky", title: "UIP23 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
    }
}
