//
//  AlertBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 30/11/2022.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var show: Bool = false
    
    var body: some View {
        Button("Click Me!") {
            show.toggle()
        }
        .alert(isPresented: $show) {
//            Alert(title: Text("There was an error!"))
           getAlert()
        }
    }
    
    func getAlert() -> Alert {
//        return  Alert(
//            title: Text("Delete user"),
//            message: Text("Here you are required to delete this user"),
//            primaryButton: .destructive(Text("Delete"),  action: {
//
//            }),
//            secondaryButton: .cancel())
        
        return Alert(
            title: Text("Delete user".capitalized),
            message: Text("You have deleted the user successfully".capitalized),
            dismissButton: .default(Text("Ok"))
            
        )
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
