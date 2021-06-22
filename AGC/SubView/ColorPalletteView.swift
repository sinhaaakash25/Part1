//
//  ColorPalletteView.swift
//  AGC
//
//  Created by Aakash Sinha on 22/06/21.
//

import SwiftUI

struct ColorPalletteView: View {
    
    private var colors: [Color] = {
        
        let hueValues = Array(0...359)
        
        return hueValues.map {
            Color(UIColor(hue: CGFloat($0) / 359.0 ,
                          saturation: 1.0,
                          brightness: 1.0,
                          alpha: 1.0))
        }
    }()
    
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1997275628, green: 0.0001063899622, blue: 0.3161985579, alpha: 1)), Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)), Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.8539440036, blue: 0, alpha: 1))]),
                       startPoint: .leading,
                       endPoint: .trailing)
            .frame(width: 300, height: 40)
            .cornerRadius(5)
            .shadow(radius: 8)
            .overlay(
                RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2.0)
            )
        
        Circle()
            .foregroundColor(Color.yellow)
            .frame(width: 30, height: 30)
            .overlay(
                Circle()
                    .stroke(Color.white,lineWidth: 3)
                
                
            )
        Text("2")
            .foregroundColor(.white)
            .font(.system(size: 15))
    }
}

struct ColorPalletteView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalletteView()
    }
}
