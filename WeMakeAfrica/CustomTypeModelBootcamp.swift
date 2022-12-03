//
//  CustomTypeModelBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 02/12/2022.
//

import SwiftUI


struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let username: String
    let followerCount: Int
}

struct CustomTypeModelBootcamp: View {
    
    let users: [UserModel] =  [
        UserModel(username: "Egide", followerCount: 600),
        UserModel(username: "Mugisha", followerCount: 430),
        UserModel(username: "Samantha", followerCount: 599),
        UserModel(username: "Elize", followerCount: 500)
    ]
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(users) { user in
                        HStack {
                            Circle()
                                .frame(width: 40,height: 40)
                                .cornerRadius(.infinity)
                                .foregroundColor(.pink)
                            
                            Text("@\(user.username)")
                                .font(.caption)
                                .foregroundColor(.purple)
                            
                            Spacer()
                            
                            Text("\(user.followerCount) followers")
                                .font(.caption)
                                .padding(.leading, 10)
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                                
                        }
                        .padding()
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Users Profiles")
            
        }
        .padding()
    }
}

struct CustomTypeModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomTypeModelBootcamp()
    }
}
