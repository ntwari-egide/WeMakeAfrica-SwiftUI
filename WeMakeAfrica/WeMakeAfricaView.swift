//
//  WeMakeAfricaView.swift
//  WeMakeAfrica
//
//  Created by Mac on 26/11/2022.
//

import SwiftUI

struct WeMakeAfricaView: View {
    var body: some View {
        ZStack {
            Color.pink
            
            VStack{
                HStack(spacing: 123){
                    Text("We Make Africa")
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                            .font(.title2)
                    })
                }
                Spacer()
            }
            .padding()
            .padding(.top,  60)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct WeMakeAfricaView_Previews: PreviewProvider {
    static var previews: some View {
        WeMakeAfricaView()
    }
}
