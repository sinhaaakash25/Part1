//
//  ListView.swift
//  AGC
//
//  Created by Aakash Sinha on 22/06/21.
//

import SwiftUI

struct ListImageView: View {
    
    var artArray: [String] = ["sea","oct","snow","sea","oct","snow","sea","oct","snow"]
    
    var body: some View {
        ForEach(0..<artArray.count) { row in
            
            HStack(spacing: 2) {
                ForEach(0..<2) { column in
                    Image(self.artArray[row])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 140)
                }
                .frame(width: 200, height: 135)
                
                
            }
            .padding(.horizontal, 20)
            .frame(width: 400)
            
            
        }
        .frame(width: 400)
        .frame(maxHeight: .infinity)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListImageView()
    }
}
