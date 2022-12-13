//
//  EventsContent.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct EventsContent: View {
    
    @StateObject var data = DataService.data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(data.events) { event in
                
                HStack(spacing: 0) {
                    
                    VStack(alignment: .leading, content: {
                        
                        CreatorView()
                        Spacer()
                        TitleSubtitleView()
                        Spacer()
                        VotesMetaInfoView()
                    })
                        .frame(width: 280, height: 160)
                        .padding(.leading, 10)
                     
                    Spacer(minLength: 5)
                    
                    StatusLogoView()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .frame(height: 160)
                        .padding(.trailing, 10)
                        
                }
                    // each cell
                    .frame(height: 200)
                    .background(.white)
                    .cornerRadius(10)
                    
                    
            }
            
        }
            // cells container
            .onAppear {
                data.getEvents()
            }
            
    }
}

struct EventsContent_Previews: PreviewProvider {
    static var previews: some View {
        EventsContent()
    }
}
