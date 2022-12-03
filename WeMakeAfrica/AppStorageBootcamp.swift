//
//  AppStorageBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 03/12/2022.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentName: String?
    @AppStorage("name") var currentName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentName ?? "Add Name Here")
            
            if let name=currentName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Nick"
                currentName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear{
//            currentName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
