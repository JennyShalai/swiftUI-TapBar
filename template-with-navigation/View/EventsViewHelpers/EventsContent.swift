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
                            .background(.red)
                        Spacer()
                        TitleSubtitleView()
                            .background(.green)
                        Spacer()
                        VotesMetaInfoView()
                    })
                        .frame(width: 240, height: 160)
                        //.padding(.leading, 10)
                        .background(.orange)
                     
                    Spacer(minLength: 5)
                    
                    StatusLogoView()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .frame(height: 160)
                        .padding(.trailing, 10)
                        .background(.blue)
                        
                }
                    // each cell
                    .frame(height: 200)
                    .frame(width: 360)
                    .background(.white)
                    .cornerRadius(10)
                    
            }
            
        }
            // cells container
            .onAppear {
                data.getEvents()
            }
            .frame(width: UIScreen.main.bounds.width)
            
    }
}

struct EventsContent_Previews: PreviewProvider {
    static var previews: some View {
        EventsContent()
    }
}
