//
//  AnimationsBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 25/11/2022.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimated:  Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            
            Button(action: {
//                withAnimation(
//                    Animation.default
//                        .repeatForever(autoreverses: true)
//                ){
                    isAnimated.toggle()
//                }
                
            }, label: {
                Text("Button")
            })
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 20)
                .fill( isAnimated ? Color.pink : Color.purple)
                .frame(width: isAnimated ? 200 : 30,height: isAnimated ? 300 : 30)
                .rotationEffect(Angle(
                    degrees: isAnimated ? 360 : 0
                ))
                .offset(y: isAnimated ?  -300 : 0)
                .animation(
//                    Animation.default
//                        .repeatForever(autoreverses: true)
                    Animation
                        .spring(
                            response: 1.0,
                            dampingFraction: 0.2,
                            blendDuration: 1.0
                        )
                )
                
        }
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
