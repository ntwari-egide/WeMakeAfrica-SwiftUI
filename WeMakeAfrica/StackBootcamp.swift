//
//  StackBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        // vstack : vertical
        // hstack: horizontal
        // zstack: zindex - back to front
        
//        ZStack{
//            Rectangle()
//                .fill(.pink)
//                .frame(width: 300, height: 200)
//
//            Rectangle()
//                .fill(.purple)
//                .frame(width: 300, height: 140)
//
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 300, height: 100)
//
//        }
        
        VStack( alignment: .center,  spacing: 51.0, content: {
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100,  height: 100)
                )
                .frame(alignment: .top)
            
            Rectangle()
                .fill(.pink)
                .frame(width: 300, height: 200)
                .border(.black.opacity(0.2))
            
            Rectangle()
                .fill(.purple)
                .frame(width: 300, height: 140)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 100)
            
        })
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
    }
}
