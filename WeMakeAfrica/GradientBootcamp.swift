//
//  GradientBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 21/11/2022.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        VStack {
            Text("We Make Africa")
                .font(.title)
                .bold()
                .foregroundColor(.pink)
                .padding(50)
                .multilineTextAlignment(.center)
            RoundedRectangle(cornerRadius: 0.0)
                .fill(
                    LinearGradient(
                        gradient:
                            Gradient(colors: [Color.blue,Color.pink, Color.cyan]
                                    ),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 370, height: 200)        }
        
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
