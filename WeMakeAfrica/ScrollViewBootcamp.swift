//
//  ScrollViewBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 24/11/2022.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    
    let customColor: Color = .pink
    
    let books:  [String] = ["Diverse Lead Characters"," Global Cultures", "Refugees & Resettlement"," New Environments","Cultural Celebrations","Personal Identity","Different Family Structures","Adoption","Divorce","Grief","Citizenship & Community Building"," LGBTQ+ "," Gender Stereotyping "," Socio-Economic Status ","Disabilities  "," Mental Health "," Neurodivergence "," STEM"]
    
    var body: some View {
        ScrollView(
            .vertical,
            showsIndicators: false
        )
        {
            Text("Top Trending Books")
                .font(.title3)
                .foregroundColor(.pink)
                .fontWeight(.bold)
                .padding(.vertical, 30)
                .textCase(.uppercase)
                
            
            LazyVStack(spacing: 30){
                ForEach(0..<10) { index in
                    ScrollView(
                        .horizontal,
                        showsIndicators: false
                    ){
                        LazyHStack(spacing: 20){
                            ForEach(books.indices) { index in
                                LazyVStack(
                                    spacing: 20
                                )
                                {
                                    Image("CustomImage")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height: 100)
                                    Text("\(books[index])")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                }
                                .frame(width: 160, height: 150)
                                .cornerRadius(20)
                                .padding(.all,20)
                                .border(.black.opacity(0.4))
                                .background(
                                    Color.white
                                        .cornerRadius(10)
                                )
                                
                            }
                        }
                        
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
