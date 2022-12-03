//
//  ButtonsBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title = "This the initial text"
    
    var body: some View {
        VStack{
            Text(title)
            
            Button("Press Me!") {
                self.title = "Button pressed"
            }
            .accentColor(.pink)
            
            Button(
                action: {
                    self.title = "Like Button #2 is pressed!"
                    
                }, label: {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.pink)
                        .font(.title)
                        .padding(.top, 20)
                }
            )
            
            Button(action: {
                self.title = "Button #3 is clicked!"
            }, label: {
                Text("FINISH".uppercased())
                    .foregroundColor(.purple)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(
                        Capsule()
                            .stroke(Color.purple, lineWidth: 2.0)
                    )
            })
            
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
