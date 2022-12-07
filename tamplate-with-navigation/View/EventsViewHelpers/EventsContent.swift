//
//  EventsContent.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct EventsContent: View {
    
    @StateObject var data = DataService.data
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 30) {
            
            ForEach(data.events) { event in
                
                HStack(spacing: 25) {
                    
                    Image(event.image)
                        .resizable()
                        .frame(width: 55, height: 55)
                        .aspectRatio(contentMode: .fill)
                        
                    VStack(alignment: .leading, spacing: 5) {
                        Text(event.name)
                            .fontWeight(.semibold)
                            
                        Text(event.description)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        // action if heart ico is tapped
                        print("heart tapped")
                    } label: {
                        Image(systemName: "suit.heart")
                            .font(.title3)
                    }

                }
            }
        }
        .padding(25)
        .background(Color.white)
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
