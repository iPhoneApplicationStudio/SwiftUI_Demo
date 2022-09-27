//
//  ContentView.swift
//  SectionView
//
//  Created by Abhinay Maurya on 24/09/22.
//

import SwiftUI

//Data Model
struct Student: Identifiable {
    let id: Int
    let name: String
}



struct ContentView: View {
    //MARK: - Properties
    let items: [Student] = [
        Student(id: 1, name: "Ram"),
        Student(id: 2, name: "Shyam"),
        Student(id: 3, name: "Abhinay"),
        Student(id: 4, name: "Kim"),
        Student(id: 5, name: "John"),
    ]
    
    var body: some View {
        List {
            Section(header: Text("All Students")
                            .font(.headline)
                            .fontWeight(.medium)) {
                ForEach(items) { item in
                    Text(item.name)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                }//ForEach
            }//Section
            .textCase(nil)
        }//List
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
