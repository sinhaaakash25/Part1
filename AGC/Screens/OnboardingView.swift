//
//  OnboardingView.swift
//  AGC
//
//  Created by Aakash Sinha on 21/06/21.
//

import SwiftUI

struct OnboardingView: View {
    
    var featureImgArray = [String](repeating: "book", count: 8)
    
    var featuretitleArray = [String](repeating: "lorem ipsum is used", count: 8)
    
    var featureSummaryArray = [String](repeating: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", count: 8)
    
    
    var body: some View {
        NavigationView {
        GeometryReader { geometry in
            ScrollView(.vertical,showsIndicators: false) {
                
                
                VStack(alignment: .center) {
                    
                    
                    Image("combinedShapeHeader")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width/1.8, height: 71.0)
                        .padding(.top,20)
                        .offset(x: -70.0 )
                    
                    
                    Image("mainArt")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: 360
                        )
                        .offset(x: 40.0 )
                        .clipped()
                    
                    
                    
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit")
                        
                        .font(.system(size: 16))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding(.all,30)
                    
                    HStack(spacing: 10) {
                        NavigationLink(destination:
                            DashboardView()
                        , label: {
                            HStack{
                                Image(systemName: "arrow.right")
                                
                                
                                Text("Register")
                                
                            }
                            
                        })
                        .frame(width: 140 , height: 50)
                        
                        .background(Color(.red))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        Text("me as a collector")
                            .frame(height: 50)
                    }
                    .font(.system(size: 25))
                    
                    .padding([.leading, .trailing],30)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack(spacing: 10) {
                                Image(systemName: "arrow.right")
                                
                                
                                Text("track my Application")
                            }
                            .foregroundColor(.blue)
                            .font(.system(size: 20))
                        })
                    
                    
                    VStack(alignment: .leading, spacing: 15) {
                        ForEach(0..<8) { index in
                            
                            Image(featureImgArray[index])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90)
                            
                            Text(featuretitleArray[index])
                                .font(.title2)
                            
                            Text(featureSummaryArray[index])
                                .font(.system(size: 16))
                            
                            Spacer()
                            Spacer()
                            
                            
                        }
                        
                        
                    }
                    .multilineTextAlignment(.leading)
                    .padding([.top, .leading, .trailing], 30)
                    
                    
                    HStack(spacing: 10) {

                        Image("fb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Image("insta")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                    }
                    
                    .padding(.bottom, 20)
                    
                    Divider()
                        .background(Color.gray)
                        .padding(.horizontal, 30)
                    
                    
                    Image("combinedShapeFooter")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 50)
                    
                   
                }
                
                HStack(spacing: 100) {

                    VStack(alignment: .leading, spacing: 8) {
                        Text("About Us")
                        Text("Team")
                        Text("Reach Us")
                    }
                    

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Affiliations")
                        Text("Disclaimers")
                        Text("Privacy Policy")
                    }
                    
                }
                .font(.system(size: 16, weight: .semibold, design: .serif))
                .padding()

                
                Divider()
                    .background(Color.gray)
                    .padding(.horizontal, 30)
                
                HStack(spacing: 7) {
                    Image("c")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text(" Content Copyright reserved.")
                        .font(.system(size: 16))
                }
                
            }
        }
        .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
