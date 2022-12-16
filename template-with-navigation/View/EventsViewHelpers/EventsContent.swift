//
//  EventsContent.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct EventsContent: View {
    
    var events: [Event]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            ForEach(events, id: \.id) { event in
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white)
                        .padding(.horizontal)
                    
                    HStack(spacing: 0) {
                        
                        VStack(alignment: .leading, content: {
                            
                            CreatorView(event: event)
                            Spacer()
                            TitleSubtitleView(event: event)
                            Spacer()
                            VotesMetaInfoView(event: event)
                        })
                            .frame(width: 260, height: 160)
                        
                        StatusLogoView(event: event)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .frame(height: 160)
                            
                    }
                        // each cell
                        .frame(height: 180)
                }   
            }
        }
    }
}

struct EventsContent_Previews: PreviewProvider {
    static var previews: some View {
        EventsContent(events: [Event(type: "vote", author: "evgeshaky", title: "UIP23 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling"))])
    }
}
