//
//  ShapesBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 21/11/2022.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack {
            Text("We Make Africa")
                .foregroundColor(.pink)
                .font(.title)
                .multilineTextAlignment(.center)
                .bold()
                .padding(40)
            
            Circle()
    //            .fill(Color.blue)
           //     .foregroundColor(.pink)
    //            .stroke(Color.pink)
                .stroke(
                    Color.pink,
                    style: StrokeStyle(lineWidth: 30, lineCap: .round,  dash: [40])
                )
                .frame(width: 300, alignment: .center)
            
            Circle()
                .stroke()
                .trim(from: 0.0,to: 0.75)
                .padding(20)
                .frame(
                    width: 400,alignment: .center
                )
            
        }
        
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
