//
//  ImageBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("CustomImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200,height: 200)
            //.scaledToFit()
            .clipShape(
//                Circle()
                RoundedRectangle(cornerRadius: 25.5)
            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
