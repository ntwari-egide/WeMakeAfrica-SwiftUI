//
//  ForEachBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Book", "Cup", "Ginga"]
    
    var body: some View {
        VStack{
            HStack (spacing: 60){
                ForEach(0..<data.count)  { index in
                    Text("\(index+1)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(.black)
                                .frame(width: 60, height: 60)
                                
                        )
                }
            }
            
            VStack{
                ForEach(data.indices) { index in
                    Text("Option \(index+1): \(data[index])")
                        .foregroundColor(.white)
                        .padding()
                        .background(.pink)
                }
                
            }
            .padding(.top, 40)
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
