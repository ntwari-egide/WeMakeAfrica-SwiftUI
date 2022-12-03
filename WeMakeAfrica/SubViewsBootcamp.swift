//
//  SubViewsBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 25/11/2022.
//

import SwiftUI

struct SubViewsBootcamp: View {
    var body: some View {
        VStack{
            contentLayer
            
            HStack{
                MainContentView()
                MainContentView()
            }
            .padding(.top, 50)
            
        }
    }
    
    var contentLayer: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 40)
                .background(
                    Color.pink
                        .cornerRadius(5)
            )
        }
    }
}

struct SubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubViewsBootcamp()
    }
}

struct MainContentView: View {
    var body: some View {
        VStack{
            Text("Changes made")
                .padding()
                .foregroundColor(.white)
                .background(.purple)
        }
    }
}
