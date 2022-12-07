//
//  DataSource.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

class DataService: ObservableObject {
    
    @Published var events: [Event] = []
    @Published var isLoading: Bool = false
    
    private init(){}
    static let data = DataService()
    
    func getEvents() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("API call imitation with 2 sec delay..")
            
            // get data from API, modefied it to the Event objects and store them in the self.events 
            self.events = [
                Event(name: "EventNameOne", description: "Event description first shoul be here", image: "icon-1"),
                Event(name: "EventNameTwo", description: "Event description two goes here and should be a little longer to check an alignment", image: "icon-2"),
                Event(name: "EventNameThree", description: "Event description three", image: "icon-3"),
                Event(name: "EventNameOne", description: "Event description first shoul be here", image: "icon-1"),
                Event(name: "EventNameTwo", description: "Event description two goes here and should be a little longer to check an alignment", image: "icon-2"),
                Event(name: "EventNameThree", description: "Event description three", image: "icon-3"),
                Event(name: "EventNameOne", description: "Event description first shoul be here", image: "icon-1"),
                Event(name: "EventNameTwo", description: "Event description two goes here and should be a little longer to check an alignment", image: "icon-2"),
                Event(name: "EventNameThree", description: "Event description three", image: "icon-3"),
                Event(name: "EventNameOne", description: "Event description first shoul be here", image: "icon-1"),
                Event(name: "EventNameTwo", description: "Event description two goes here and should be a little longer to check an alignment", image: "icon-2"),
                Event(name: "EventNameThree", description: "Event description three", image: "icon-3")
            ]
            
            self.isLoading = false
            
        }
        
    }
    
}
    
    
struct Event: Identifiable, Hashable, Codable {
    
    var id = UUID().uuidString
    var name: String
    var description: String
    var image: String
}

struct DAOs {}

struct Proposal {}
