//
//  ContentView.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
    
        // MARK: TapBar
        TabView {
            EventsView()
                .tabItem {
                    Label("Event", systemImage: "list.dash")
                }
            DAOsView()
                .tabItem {
                    Label("DAOs", systemImage: "network")
                }
            ProposalsView()
                .tabItem {
                    Label("Proposals", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
