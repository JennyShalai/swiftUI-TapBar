//
//  EventsView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

struct EventsView: View {
    
    @StateObject var data = DataService.data
    @State var index: Int = 1
    var screensize = UIScreen.main.bounds.width
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                
                StickyHeader()
                Spacer(minLength: 10)
                MenuBarView(index: self.$index)
                Spacer(minLength: 20)
                EventsContent()
                    .frame(width: UIScreen.main.bounds.width)
                    
            }
            .frame(width: UIScreen.main.bounds.width)
            
        }
            .ignoresSafeArea(.container, edges: .vertical)
            .background(Color(UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)))
            //.frame(width: UIScreen.main.bounds.width)
   
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
