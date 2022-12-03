//
//  StateBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct BindingStateBootcamp: View {
    
    @State  var backgroundColor: Color = .purple
    @State var title :String = "We Make Africa"
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                Text("\(title)")
                    .fontWeight(.bold)
                    .font(.title)
                Text("Bring the desired changes in Africa through enterprenuership bootcamps")
                
                ButtonContentView(
                    title: $title, backgroundColor: $backgroundColor
                )
            }
        }
        .foregroundColor(.white)
    }
}

struct BindingStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingStateBootcamp()
    }
}

struct ButtonContentView: View {
    
    @Binding var title: String
    @Binding var backgroundColor: Color
    
    var body: some View {
        HStack{
            Button(action: {
                if backgroundColor == .pink
                {
                    backgroundColor = .black
                }
                else { backgroundColor = .pink }
                
            }, label: {
                Text("CHANGE BG".uppercased())
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.caption)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.white, lineWidth: 2)
                    )
            })
            
            Button(action: {
                title = "We Make Rwanda"
                
            }, label: {
                Text("CHANGE tItle".uppercased())
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.caption)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.white, lineWidth: 2)
                    )
            })
        }
    }
}
