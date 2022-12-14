//
//  TitleSubtitleView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct TitleSubtitleView: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 5) {
                
                Text("UIP23 - DAO Operations Budget")
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                
                Text("2 days left to vote vs snapshot")
                    .foregroundColor(.gray)
                
            }
                .padding(.leading, 15)
            //Spacer(minLength: 1)
        }
        
    }
}

struct TitleSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleSubtitleView()
    }
}
