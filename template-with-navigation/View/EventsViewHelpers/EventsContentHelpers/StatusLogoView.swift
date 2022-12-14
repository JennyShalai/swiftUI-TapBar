//
//  StatusLogoView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-09.
//

import SwiftUI

struct StatusLogoView: View {
    
    @StateObject var data = DataService.data
    //@State var event: Event
    
    var body: some View {
        
        VStack(alignment: .trailing) {
            
            HStack(spacing: 0) {
                
                Image(systemName: "bubble.left.and.bubble.right")
                    .font(.system(size: 9))
                    .foregroundColor(.white)
                
                Text("DISCUSSION")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.1)
                    .lineLimit(1)
            }
                .frame(width: 110, height: 20)
                .background(.gray)
                .cornerRadius(50)
            
            Spacer()
            Image(systemName: "face.smiling.inverse")
                .resizable()
                .frame(width: 50, height: 50)
                //.aspectRatio(contentMode: .fill)
                .foregroundColor(.pink)
            Spacer()
            Button {
                print("... button tapped")
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.black)
                .fontWeight(.bold)
                
            }
             
        }
            .background(.white)
            .padding(.trailing, 25)
    }
}

struct StatusLogoView_Previews: PreviewProvider {
    static var previews: some View {
        StatusLogoView()
    }
}
