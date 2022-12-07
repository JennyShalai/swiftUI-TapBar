//
//  EventsView.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

struct EventsView: View {
    
    @StateObject var data = DataService.data
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    StickyHeader()
                    SearchBarView()
                    EventsContent()
                }
            }
                .edgesIgnoringSafeArea(.top)
        }
            //.coordinateSpace(name: "SCROLL")
            .ignoresSafeArea(.container, edges: .vertical)
            .background(Color.white)
            
            
        
        
        
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
