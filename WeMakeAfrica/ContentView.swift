//
//  ContentView.swift
//  WeMakeAfrica
//
//  Created by Mac on 21/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Change are happing here!")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
                .padding(.bottom, 14.0)
            Text("I am text 2")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
