//
//  VotesMetaInfoView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct VotesMetaInfoView: View {
   
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
                //.background(.green)
            
            HStack(spacing: 4) {
                
                Image(systemName: "chart.bar.doc.horizontal.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.gray)
                    .rotationEffect(.degrees(-90))
                
                Text("150%")
            }
                //.background(.yellow)
        }
    }
}

struct VotesMetaInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VotesMetaInfoView()
    }
}
