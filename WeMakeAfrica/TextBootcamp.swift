//
//  TextBootcamp.swift
//  WeMakeAfrica
//
//  Created by Egide on 21/11/2022.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack {
            Text("About text")
                .font(.title)
                .foregroundColor(Color.cyan)
                .underline()
                .underline(true,color: Color.green)
                .italic()
                .bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.")
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
                .baselineOffset(-20.0)
                .foregroundColor(.blue)
                .frame(
                    width: 240,
                    alignment: .center
                )
            
        }
            
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
