//
//  PaddingAndSpacerBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack {
            
            VStack {
                
                Text("Visit Rwanda")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom,  20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("This is the content which can  fit on hte many  widths of  the screen, you  can see  it")
                
                HStack {
                    Text("20+")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(.pink)
                                .frame(width: 50,height: 50)
                    )
                        .padding(.top, 40)
                        .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                    Text("20K+")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(.black)
                                .frame(width: 50,height: 50)
                    )
                        .padding(.top, 40)
                        .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                    Text("20+")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(.purple)
                                .frame(width: 50,height: 50)
                    )
                        .padding(.top, 40)
                        .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.leading, 20)
                }
                .frame(maxWidth: 200)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.all, 20)
            .padding(.vertical, 30)
            .background(
                Color.white
                    .cornerRadius(20)
                .shadow(
                    color: Color.black.opacity(0.2),
                    radius: 10,
                    x: 2,  y:  4
                )
            )
            .frame(width: 350,height: 400)
            
            
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .foregroundColor(.white)
                   // .padding(.all, 30)
                    .padding(.top,  40)
                    .padding(.bottom, 50)
                    .background(.pink)
                
                VStack {
                    Text("Welcome back")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                }
                
            }
            .padding(.all,30)
        .background(.purple)
        }
        
            
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
