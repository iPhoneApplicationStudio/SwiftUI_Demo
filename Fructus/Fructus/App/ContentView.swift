//
//  ContentView.swift
//  Fructus
//
//  Created by BigStep on 25/08/22.
//

import SwiftUI

struct ContentView: View {
    //MARK:  Properties
    var fruits: [Fruit] = FruitDataModel.fruits
    @State private var isShowingSetting: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink( destination: FruitDetailView(fruit: fruit)) {
                        FruitCellView(fruit: fruit)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSetting = true
            }) {
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isShowingSetting) {
                SettingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
