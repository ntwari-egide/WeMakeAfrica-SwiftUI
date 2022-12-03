//
//  TabViewBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 03/12/2022.
//

import SwiftUI

struct SampleView: View {
    var body: some View{
        ZStack{
            Color.blue
            
            //content
            Text("List of Friends")
                .foregroundColor(.blue)
                .padding()
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(30)
            
        }
    }
}

struct TabViewBootcamp: View {
    var body: some View {
        TabView{
            //  tab 1
            Color.pink
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Likes")
                }
                .badge(40)
            
            Color.purple
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Jokes")
                }
                .badge(3)
            
            SampleView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Friends")
                }
                .badge(30)
                
        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
