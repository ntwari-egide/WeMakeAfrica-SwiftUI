//
//  NavigationViewAndLinks.swift
//  WeMakeAfrica
//
//  Created by Mac on 30/11/2022.
//

import SwiftUI

struct NavigationViewAndLinks: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                // navigation link
                NavigationLink("Go Inbox", destination: SecondScreen())
                
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            .navigationTitle("All inboxes")
            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing:
                    NavigationLink(
                        destination: SecondScreen(),
                        label: {
                            Image(systemName: "gear")
                        }
                    )
                    .accentColor(.pink)
            )
        }
    }
}


// second screen
struct SecondScreen: View {
    
    @Environment(\.presentationMode)  var presentationMode;
    
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Inbox")
                .navigationBarHidden(true)
            
            VStack {
                
                Button ("BACK")  {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Check box", destination: ThirdScreen())
            }
        }
    }
}

// third screen
struct  ThirdScreen: View {
    var body: some View {
        
        ZStack {
            Color.purple
                .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct NavigationViewAndLinks_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewAndLinks()
    }
}
