//
//  LinksBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 30/11/2022.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = [
        "Banana","Orange","Apple","Jangos","Fausss"
    ]
    
    @State var veggies: [String] = [
        "tomato","potato","carrot"
    ]
    
    var body: some View {
        NavigationView{
            
            //  list section
            
            List{
                Section(
                    header: Text("Fruits 1")
                ){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: false,
                        content: {
                            Button("Archive") {
                                
                            }
                            Button("Keep") {
                                
                            }
                            
                            Button("Add") {
                                
                            }
                        }
                    )
                }
                
                Section(
                    header: Text("Fruits 1")
                ){
                    ForEach(veggies, id: \.self) { veggy in
                        Text(veggy.capitalized)
                    }
                }
                
            }
            .accentColor(.purple)
            
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    Button("Add"){
                        fruits.append("Pinapple")
                    }
            )
        }
        .accentColor(.pink)
    }
    
    func delete(indexSet: IndexSet)  {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListsBootcamp()
    }
}
