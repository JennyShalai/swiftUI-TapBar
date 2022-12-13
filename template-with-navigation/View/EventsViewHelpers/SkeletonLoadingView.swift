//
//  SkeletonLoadingView.swift
//  tamplate-with-navigation
//
//  Created by Jenny Shalai on 2022-12-06.
//

import SwiftUI

struct SkeletonLoadingView: View {
    
    @State var data: DataService?
    
    var body: some View {
        
        if let data = data {
            
        } else {
            Image("")
                .resizable()
                .frame(width: 50, height: 50)
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .onAppear {
                    
                }
        }
        
        
        
    }
}

struct SkeletonLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        SkeletonLoadingView()
    }
}
