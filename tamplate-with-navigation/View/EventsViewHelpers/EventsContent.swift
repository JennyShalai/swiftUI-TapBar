//
//  EventsContent.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct EventsContent: View {
    
    @StateObject var data = DataService.data
    
    var body: some View {
        
        GeometryReader { geometry in // sell width
            
            VStack(alignment: .leading, spacing: 100) {
                
                ForEach(data.events) { event in
                    
                    HStack(spacing: 0) {
                        
                        VStack(alignment: .leading, spacing: 25) {
                            
                            HStack {
                                
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(.purple)
                                
                                Text("kris.eth")
                                    .fontWeight(.semibold)
                                
                                Text("2 days ago")
                                    .foregroundColor(.gray)
                            }
                                .background(.blue)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("UIP23 - DAO Operations Budget")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                Text("2 days left to vote vs snapshot")
                                    .foregroundColor(.gray)
                            }
                                .background(.green)
                            
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
                                .background(.red)
                        }
                            .frame(width: geometry.size.width * 0.7)
                        
                        VStack(alignment: .trailing, spacing: 37) {
                            
                            HStack(spacing: 0) {
                                
                                Image(systemName: "bubble.left.and.bubble.right")
                                    .font(.system(size: 9))
                                    .foregroundColor(.white)
                                    //.background(.green)
                                
                                Text("DISCUSSION")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.1)
                                    .lineLimit(1)
                                    //.background(.blue)
                                                                    
                            }
                                .frame(width: 110, height: 20)
                                .background(.gray)
                                .cornerRadius(50)
                            
                            Image(event.image)
                                .resizable()
                                .frame(width: 70, height: 70)
                                .aspectRatio(contentMode: .fill)
                            
                            Button {
                                print("... button tapped")
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.black)
                                .fontWeight(.bold)                            }
                             
                        }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                        .frame(height: 200) // sell height
                    
                }
                    .background(.white)
                    .cornerRadius(5)
                    //.padding(10)
                
                
            }
            //.frame(width: geometry.size.width * 0.9, height: 250)
            
            .onAppear {
                data.getEvents()
            }
        }
    }
}

struct EventsContent_Previews: PreviewProvider {
    static var previews: some View {
        EventsContent()
    }
}
