//
//  TitleSubtitleView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct TitleSubtitleView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            Text("UIP23 - DAO Ope rations Budget")
                .fontWeight(.bold)
                .font(.system(size: 18))
                .lineLimit(2)
            
            Text("2 days left to vote vs snapshot")
                .foregroundColor(.gray)
                .lineLimit(2)
            
        }
            .padding(.leading, 25)
            
        
    }
}

struct TitleSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleSubtitleView()
    }
}
