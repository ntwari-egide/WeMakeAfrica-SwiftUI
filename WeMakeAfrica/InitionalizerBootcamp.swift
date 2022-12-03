//
//  InitionalizerBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct InitionalizerBootcamp: View {
    
    let backgroundColor: Color
    let appleNumber: Int
    let variableName: String
    
    enum Fruit {
        case apples
        case oranges
    }
    
    init(appleNumber: Int, fruit: Fruit) {
        self.appleNumber = appleNumber
        
        if fruit == .apples {
            self.backgroundColor = .pink
            self.variableName = "Apples"
        }
        else if fruit == .oranges {
            self.backgroundColor = .yellow
            self.variableName = "Oranges"
        }
        else {
            self.backgroundColor = .red
            self.variableName = "Others"
        }
        
    }
    
    var body: some View {
        VStack (spacing: 20){
            Text("\(appleNumber)")
                .font(.title)
                .foregroundColor(.white)
            
            Text(variableName)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
        
    }
}

struct InitionalizerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitionalizerBootcamp(
            appleNumber: 500,
            fruit: .apples
        )
    }
}
