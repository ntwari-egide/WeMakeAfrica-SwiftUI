//
//  FormElementsBootcamp.swift
//  WeMakeAfrica
//
//  Created by Mac on 02/12/2022.
//

import SwiftUI

struct FormElementsBootcamp: View {
    
    @State var name: String = ""
    @State var bio: String = ""
    @State var showBio: Bool = false
    @State var demoTime: String = "12:00"
    
    // configuring the date picker
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2003))  ?? Date()
    @State var selectedDate: Date = Date()
    var dateFormatter : DateFormatter {
        let formatter  = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter
    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    
                    TextField("Enter name", text: $name)
                        .padding()
                        .background(
                            Color.pink.opacity(0.6)
                        )
                        .foregroundColor(.white)
                    
                    Toggle(isOn: $showBio) {
                        Text("Show Bio")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .pink))
                    
                    if(showBio) {
                        TextEditor(text: $bio)
                            .frame(height: 300)
                            .padding()
                            .background(
                                Color.pink.opacity(0.6)
                            )
                            .foregroundColor(.black)
                            .colorMultiply(Color.gray)
                       
                        Button {
                            
                        } label: {
                            Text("SAVE")
                                .foregroundColor(.white)
                                .font(.caption)
                                .padding(.horizontal, 40)
                                .padding()
                                .background(.pink)
                                .cornerRadius(0)
                                
                        }
                    }
                    
                    Picker(
                        selection: $demoTime,
                        label: Text("Book Demo Time"),
                        content: {
                            Text("12:00").tag("12:00")
                            Text("02:00").tag("02:00")
                            Text("03:00").tag("03:00")
                            Text("04:00").tag("04:00")
                            Text("05:00").tag("05:00")
                            Text("05:00").tag("05:00")
                            Text("05:00").tag("05:00")
                        })
//                    .pickerStyle(SegmentedPickerStyle())
//                    .pickerStyle(MenuPickerStyle())
//                    .pickerStyle(WheelPickerStyle())
                    .pickerStyle(InlinePickerStyle())
                    
                    DatePicker(
                        "Date Of Birth",
                        selection: $selectedDate,
                        in: startingDate...selectedDate,
                        displayedComponents: [.date,.hourAndMinute]
                    )
                    .accentColor(.pink)
                    
                    Text("Content: \(name)")
                        .padding(.top,70)
                        .font(.caption)
                    
                    Text("Bio: \(bio)")
                    Text("Date Of Birth: \(dateFormatter.string(from: selectedDate))").font(.caption)
                    
                    Spacer()
                }
            }
            .padding()
            
            .navigationTitle("Create Account")
        }
        .padding()
        
    }
}

struct FormElementsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FormElementsBootcamp()
    }
}
