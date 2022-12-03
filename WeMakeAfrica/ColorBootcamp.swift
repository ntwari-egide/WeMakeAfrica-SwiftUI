//
//  ColorBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 21/11/2022.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))
                Color("CustomColor")
            )
            .frame(width: 300,height: 200)
            //.shadow(radius: 10)
            .shadow(color: .gray.opacity(0.6), radius: 10,x: 0,y:4)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
