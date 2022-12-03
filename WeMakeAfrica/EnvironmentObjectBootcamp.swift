//
//  EnvironmentObjectBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 03/12/2022.
//

import SwiftUI


class EnviromentViewModel: ObservableObject {
        
    @Published var dataArray: [String] = []
    
    init (){
        getData()
    }
    
    func getData () {
        dataArray.append(contentsOf: ["Ipad","iMac","iPhone","Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink  {
                        DetailsView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            
            .navigationTitle("Apple Products".capitalized)
        }
        .padding()
        .environmentObject(viewModel)
    }
    
}


struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnviromentViewModel
    
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea(.all)
            
            // content
            VStack(spacing: 40){
                
                ForEach(viewModel.dataArray, id: \.self) { item in
                    Text(item)
                        .foregroundColor(.white)
                }
            }
        }
    }
}



struct DetailsView: View {
    
    let selectedItem : String
    
    var body: some View {
        
        ZStack{
            Color.pink.ignoresSafeArea(.all)
            
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(30)
                }
            )
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
