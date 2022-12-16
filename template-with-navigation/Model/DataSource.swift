//
//  DataSource.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

class DataService: ObservableObject {
    
    @Published private (set) var events: [Event] = []
    
    
    private init() { getEvents() }
    static let data = DataService()
    
    func getEvents() {
        self.events = []
        events.append(Event(type: "vote", author: "evgeshaky", title: "UIP23 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
        events.append(Event(type: "vote", author: "jenny", title: "UIP19 - DAO Operations", description: "Snapshot voting ends in 3 days", image: Image(systemName: "face.smiling")))
        events.append(Event(type: "vote", author: "evgesha", title: "UIP18 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
        events.append(Event(type: "vote", author: "jennyky", title: "UIP11 - DAO Operations", description: "Snapshot voting ends in 3 days", image: Image(systemName: "face.smiling")))
        
        
        
    }
    
    func refreshedEvents() {
        self.events = []
        events.append(Event(type: "vote", author: "jackLo", title: "UIP23 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
        events.append(Event(type: "vote", author: "SamVu", title: "UIP19 - DAO Operations", description: "Snapshot voting ends in 3 days", image: Image(systemName: "face.smiling")))
        events.append(Event(type: "vote", author: "Jack", title: "UIP18 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
        events.append(Event(type: "vote", author: "Sam", title: "UIP11 - DAO Operations", description: "Snapshot voting ends in 3 days", image: Image(systemName: "face.smiling")))
   
        
        
    }
    
}
    
    
struct Event: Identifiable {
    
//    static func == (lhs: Event, rhs: Event) -> Bool {
//        return lhs.type == rhs.type &&
//                lhs.author == rhs.author &&
//                lhs.title == rhs.title &&
//                lhs.description == rhs.description &&
//                lhs.image == rhs.image
//    }
    
    var id: String = UUID().uuidString
    var type: String
    var author: String
    var title: String
    var description: String
    var image: Image
    
    
}
enum eventType: String {
    case vote = "vote"
    case news = "news"
}
struct DAOs {}

struct Proposal {}


