//
//  IconBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 22/11/2022.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        HStack{
            Text("Welcome Back!")
                .bold()
                .font(.caption)
                .foregroundColor(Color("CustomColor"))
            
            Image(systemName: "heart.fill")
                .font(.title)
                .foregroundColor(.pink)
            Image(systemName: "hand.wave")
                .font(.title)
                .foregroundColor(.pink)
            
            Image(systemName: "chart.bar.fill")
                .font(.title)
                .foregroundColor(.pink)
            //Image("CustomImage)
            
        }
    }
}

struct IconBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcamp()
    }
}
