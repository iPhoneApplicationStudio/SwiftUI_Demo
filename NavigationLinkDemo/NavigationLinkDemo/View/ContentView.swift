//
//  ContentView.swift
//  NavigationLinkDemo
//
//  Created by Abhinay Maurya on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()//For flexible spacing
                VStack(spacing: 12) {
                    NavigationLink(destination: DetailView()) {
                        Text("Navigate to detail page")
                            .font(.title)
                            .fontWeight(.regular)
                    }
                    
                    Link(destination: URL(string: "https://google.com")!) {
                        HStack(spacing: 5) {
                            Text("Navigate to Google")
                                .font(.title3)
                                .fontWeight(.regular)
                            
                            Image(systemName: "info.circle")
                        }//HStack
                    }//Link
                }//VStack
                
                Spacer()//For flexible spacing
            }//VStack
            .padding()
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }//Navigation View
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
