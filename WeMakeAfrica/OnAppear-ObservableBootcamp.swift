//
//  OnAppear-ObservableBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 02/12/2022.
//

import SwiftUI


struct FruitModel: Identifiable {
    let id : String = UUID().uuidString
    let fruitName: String
    let count: Int
}

// Separating concerns
class FruitViewModel: ObservableObject {
    @Published var fruits:  [FruitModel] =  []
    @Published var isLoading: Bool = false

    func getFruits() {
        let fruit1: FruitModel = FruitModel(fruitName: "Mango", count: 43)
        
        let fruit2: FruitModel = FruitModel(fruitName: "Acocado", count: 23)
        
        let fruit3: FruitModel = FruitModel(fruitName: "Watermelon", count: 243)
        
        isLoading = true
        
        // loading waiter
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct OnAppear_ObservableBootcamp: View {
    
    /**
        @ObservedObject = For subviews
        @StateObject =  For view CREATION or INIT
     */
    
    @ObservedObject var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text(fruit.fruitName)
                                .font(.title3)
                            
                            Spacer()
                            
                            Text("\(fruit.count)")
                                .font(.caption)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("In stock - Fruits")
            
        }
        .onAppear{
            fruitViewModel.getFruits()
        }
    }
}
struct OnAppear_ObservableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppear_ObservableBootcamp()
    }
}
