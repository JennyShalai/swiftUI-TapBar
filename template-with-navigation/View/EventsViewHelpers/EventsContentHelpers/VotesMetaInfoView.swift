//
//  VotesMetaInfoView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct VotesMetaInfoView: View {
    
    var event: Event
   
    var body: some View {
        
        HStack(spacing: 20) {
            
            HStack(spacing: 4) {
                
                Image(systemName: "square.stack.3d.down.forward")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.gray)
                
                Text("239")
            }
            
            HStack(spacing: 4) {
                
                Image(systemName: "chart.bar.doc.horizontal.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.gray)
                    .rotationEffect(.degrees(-90))
                
                Text("150%")
            }
        }
           .padding(.leading, 25)
    }
}

struct VotesMetaInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VotesMetaInfoView(event: Event(type: "vote", author: "evgeshaky", title: "UIP23 - DAO Operations Budget", description: "2 days left to vote vs snapshot", image: Image(systemName: "face.smiling")))
    }
}
