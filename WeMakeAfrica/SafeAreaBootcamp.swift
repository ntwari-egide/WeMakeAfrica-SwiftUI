//
//  SafeAreaBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            //background
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            // foreground
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .bold()
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink)
        }
        
            
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
