//
//  DashboardView.swift
//  AGC
//
//  Created by Aakash Sinha on 21/06/21.
//

import SwiftUI

struct DashboardView: View {
    

    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false) {
            
           DashboardHeaderView()
            
            HStack(spacing: 40) {
                VStack{
                    Text("2.3K")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                    Text("Followers")
                        .font(.system(size: 13))
                }
                VStack{
                    Text("50")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                    Text("Artworks")
                        .font(.system(size: 13))
                }
                VStack{
                    Text("21")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                    Text("Exhibhitions")
                        .font(.system(size: 13))
                }
            }
            
            Divider()
                .background(Color.gray)
                .padding(.horizontal, 40)
            
            HStack(spacing: 30) {
                HStack(spacing: 0){
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                    Text("120")
                }
                
                HStack(spacing: 0){
                    Image(systemName: "arrow.up.left")
                        .foregroundColor(.blue)
                    Text("4.3k")
                }
                
                HStack(spacing: 0){
                    Image(systemName: "paperplane")
                        .foregroundColor(.blue)
                    Text("2.3k")
                }
            }
            .font(.system(size: 18))
            .padding(.all, 5)
          
            
            ZStack {
                
                ColorPalletteView()
                
            }
            
            HStack(spacing: 10) {
                Button(action: {
                    
                }, label: {
                    
                    VStack{
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.gray)
                            .font(.system(size: 30))
                        
                        Text("Uploads")
                            .font(.system(size: 13, weight: .semibold, design: .default))
                            .foregroundColor(.black)
                        
                        Rectangle().frame(height: 3)
                            .padding(.horizontal, 20).foregroundColor(Color.yellow)
                    }
                    
                })
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    VStack{
                        Image("exhibit")
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                        Text("Exhibhitions")
                            .font(.system(size: 13, weight: .semibold, design: .default))
                            .foregroundColor(.black)
                        
                        Rectangle().frame(height: 3)
                            .padding(.horizontal, 20).foregroundColor(Color.gray)
                    }
                    
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    VStack{
                        Image("revenue")
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                        Text("Revenue")
                            .font(.system(size: 13, weight: .semibold, design: .default))
                            
                            .foregroundColor(.black)
                        
                        Rectangle().frame(height: 3)
                            .padding(.horizontal, 20).foregroundColor(Color.gray)
                        
                    }
                    
                })
            }
            .frame(width: 350)
            .padding()
            
            ListImageView()
                
                .navigationBarTitle("")
                .navigationBarHidden(true)
            
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        
        DashboardView()
        
    }
}
