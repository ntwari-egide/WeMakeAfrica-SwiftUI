//
//  ActionButtonBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 02/12/2022.
//

import SwiftUI

struct ActionButtonBootcamp: View {
    
    @State var showActionView : Bool = true
    var body: some View {
        
        Button("Click Me") {
            showActionView.toggle()
        }
        .actionSheet(isPresented: $showActionView, content: getActionSheet)
        
    }
    
    func getActionSheet() -> ActionSheet {
        
        let button1 : ActionSheet.Button = .default(Text("REPOST").foregroundColor(.black))
        let button2: ActionSheet.Button = .default(Text("SHARE").foregroundColor(.pink))
        let button3: ActionSheet.Button = .destructive(Text("SAVE").foregroundColor(.blue))
        let button4: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is Title"),
            message: Text("You need to do this"),
            buttons: [button1,button2,button3,button4]
        )
    }
}

struct ActionButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonBootcamp()
    }
}
