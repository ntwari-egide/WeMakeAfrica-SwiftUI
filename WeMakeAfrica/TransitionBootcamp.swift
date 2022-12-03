//
//  TransitionBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 25/11/2022.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("animate".uppercased()) {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.pink)
                    .frame(height: UIScreen.main.bounds.height*0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                
                // animating -  both directions
                    .transition(.asymmetric (
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        ))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
