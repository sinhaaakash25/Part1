//
//  DashboardHeaderView.swift
//  AGC
//
//  Created by Aakash Sinha on 22/06/21.
//

import SwiftUI

struct DashboardHeaderView: View {
    
    @State private var activate = true
    
    var body: some View {
        
        
        VStack(alignment: .center, spacing: 30) {
            
            HStack(spacing: 100) {
                Image("combinedShape")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 30)
                
                HStack(spacing: 20) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "person")
                            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        
                    })
                    .font(.system(size: 25))
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                        
                    })
                    .font(.system(size: 25))
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(.black)
                        
                    })
                    .font(.system(size: 25))
                }
                
            }
            
            HStack(spacing: 60) {
                VStack{
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 30))
                    Text("Upload")
                        .font(.system(size: 10))
                }
                .foregroundColor(.blue)
                
                Image("user")
                VStack {
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 30))
                    Text("Edit")
                        .font(.system(size: 10))
                }
                .foregroundColor(.blue)
                
            }
            
            Text("john.doe")
                .font(.system(size: 30))
                
                .frame(width: 250.0, alignment: .center)
                .offset(y: -25)
                .padding(.horizontal, 30)
            
            HStack(spacing: 200){
                Text("My Dashboard")
                    .font(.system(size: 14))
                
                Image(systemName: activate ? "checkmark.circle.fill" : "circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(activate ? .green : .gray)
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .onTapGesture {
                        activate.toggle()
                    }
                
                
            }
            .offset(y: -25)
            .padding(.horizontal, 20)
        }
    }
}

struct DashboardHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardHeaderView()
    }
}
