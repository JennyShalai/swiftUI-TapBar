//
//  EventsView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

struct EventsView: View {
    
    //@StateObject private var data = DataService.data
    @StateObject var data = DataService.data
    @State var index: Int = 1
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                VStack {
                    StickyHeader()
                    Spacer(minLength: 10)
                    MenuBarView(index: self.$index)
                    Spacer(minLength: 20)
                    EventsContent(events: data.events)
                }
                .frame(width: UIScreen.main.bounds.width)
            }
            
        }
            .ignoresSafeArea(.container, edges: .vertical)
            .background(Color(UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)))
            .refreshable {
                print("refreshed")
                do {
                    DataService.data.refreshedEvents()
                } catch {
                    // will handle api errors here
                    
                }
                
               
            }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
