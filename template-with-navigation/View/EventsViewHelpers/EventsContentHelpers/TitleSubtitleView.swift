//
//  TitleSubtitleView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct TitleSubtitleView: View {
    
    var event: Event
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            Text(event.title)
                .fontWeight(.bold)
                .font(.system(size: 18))
                .lineLimit(2)
            
            Text(event.description)
                .foregroundColor(.gray)
                .lineLimit(2)
            
        }
            .padding(.leading, 25)
            
        
    }
}

struct TitleSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleSubtitleView(event: Event(type: "vote", author: "evgeshaky", title: "UIP23 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
    }
}
