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
                
                ZStack {
                    
                    
                    RoundedRectangle(cornerRadius: 5).fill(.white).padding(.horizontal)
                    
                    HStack(spacing: 0) {
                        
                        VStack(alignment: .leading, content: {
                            
                            CreatorView()
                            Spacer()
                            TitleSubtitleView()
                            Spacer()
                            VotesMetaInfoView()
                        })
                            .frame(width: 260, height: 160)
                        
                        StatusLogoView()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .frame(height: 160)
                            
                    }
                        // each cell
                        .frame(height: 180)
                        
                }
                    
            }
            
        }
            // cells container
            .onAppear {
                data.getEvents()
            }
            //.frame(width: 380)
            //.background(.red)
            
    }
}

struct EventsContent_Previews: PreviewProvider {
    static var previews: some View {
        EventsContent()
    }
}
