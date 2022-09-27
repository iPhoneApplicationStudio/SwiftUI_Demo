//
//  ContentView.swift
//  HorizontalGrid
//
//  Created by Abhinay Maurya on 27/09/22.
//

import SwiftUI

struct Product: Identifiable {
    let id: Int
    let name: String
}

struct ContentView: View {
    let products: [Product] = [
        Product(id: 1, name: "iPhone"),
        Product(id: 2, name: "iPad"),
        Product(id: 3, name: "Apple Watch"),
        Product(id: 4, name: "Macbook Pro"),
        Product(id: 5, name: "Macbook Air"),
        Product(id: 6, name: "iMac"),
        Product(id: 7, name: "Samsung"),
        Product(id: 8, name: "Micromax"),
        Product(id: 9, name: "JioPhone"),
        Product(id: 10, name: "Mi")
    ]
    
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: gridLayout, spacing: 10) {
                        Section(header: Text("Start")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .rotationEffect(Angle(degrees: -90)),
                                footer: Text("End")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .rotationEffect(Angle(degrees: 90))) {
                            ForEach(products) { product in
                                ProductView(product: product)
                            }
                        }//Section
                    }//LazyHGrid
                    .padding()
                }//ScrollView
                .frame(maxHeight: 160)
                .padding(.horizontal, 5)
                .background(Color.red.opacity(0.5))
                
                Spacer()
            }//VStack
            .navigationTitle("Horizontal Grid with Section")
            .navigationBarTitleDisplayMode(.inline)
        }//NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
