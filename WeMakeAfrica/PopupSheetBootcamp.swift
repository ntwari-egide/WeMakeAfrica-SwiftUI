//
//  PopupSheetBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 25/11/2022.
//

import SwiftUI

struct PopupSheetBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color.pink
            
            Button( action: {
                showSheet.toggle()
            }, label: {
                Text("ACTIVATE  POPUP")
                    .foregroundColor(.pink)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(20)
                    .background(.white)
            })
//            .sheet( isPresented: $showSheet, content: {
//
//                SheetContentView()
//            })
            .fullScreenCover(isPresented: $showSheet,content: {
                SheetContentView()
            })
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct PopupSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopupSheetBootcamp()
    }
}

struct SheetContentView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding(30)
            })
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
