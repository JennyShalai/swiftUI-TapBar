//
//  SearchBarView.swift
//  template-with-navigation
//
//  Created by Jenny Shalai on 2022-12-05.
//

import SwiftUI

struct MenuBarView: View {
    
    @Binding var index: Int
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                
                Button(action: {
                    self.index = 0
                    print("Slider button tapped")
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .padding(10)
                        .frame(width: 50)
                        .background(self.index == 0 ? .black : .white)
                        .foregroundColor(self.index == 0 ? .white : .black)
                        .fontWeight(.bold)
                        .cornerRadius(25)
                }
                
                Button(action: {
                    self.index = 1
                    print("All button tapped")
                }) {
                    Text("All")
                        .padding(10)
                        .frame(width: 50)
                        .background(self.index == 1 ? .black : .white)
                        .foregroundColor(self.index == 1 ? .white : .black)
                        .fontWeight(.bold)
                        .cornerRadius(25)
                }
                
                Button(action: {
                    self.index = 2
                    print("Discussion button tapped")
                }) {
                    Text("Discussion")
                        .padding(10)
                        .frame(width: 110)
                        .background(self.index == 2 ? .black : .white)
                        .foregroundColor(self.index == 2 ? .white : .black)
                        .fontWeight(.bold)
                        .cornerRadius(25)
                }
                
                Button(action: {
                    self.index = 3
                    print("Vote button tapped")
                }) {
                    VStack {
                        Text("Vote")
                            .padding(10)
                            .frame(width: 60)
                            .background(self.index == 3 ? .black : .white)
                            .foregroundColor(self.index == 3 ? .white : .black)
                            .fontWeight(.bold)
                            .cornerRadius(25)
                    }
                }
                
                Button(action: {
                    self.index = 4
                    print("Treasury button tapped")
                }) {
                    Text("Treasury")
                        .padding(10)
                        .frame(width: 100)
                        .background(self.index == 4 ? .black : .white)
                        .foregroundColor(self.index == 4 ? .white : .black)
                        .fontWeight(.bold)
                        .cornerRadius(25)
                }
            }
            .padding(.leading, 15)
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarView(index: .constant(1))
    }
}
