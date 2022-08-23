//
//  ContentView.swift
//  SwiftUI-AsyncImage
//
//  Created by BigStep on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: -1. BASIC
        //AsyncImage(url: URL(string: Constant.imageUrlString.value))
        
        // MARK: -2. Scale
        //AsyncImage(url: URL(string: Constant.imageUrlString.value), scale: 3.0)
        
        // MARK: -3. Placeholder
        /*AsyncImage(url: URL(string: Constant.imageUrlString.value)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundColor(.purple)
                .opacity(0.50)
        }
        .padding(40)*/
        
        // MARK: -4. Extension
        /*AsyncImage(url: URL(string: Constant.imageUrlString.value)) { image in
            image
                .imageRenderring()
            
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconRenderring()
        }
        .padding(40)*/
        
        // MARK: -5. Phase
        AsyncImage(url: URL(string: Constant.imageUrlString.value), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
            case .success(let image):
                image.imageRenderring()
                    .transition(.scale)
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconRenderring()
            case .failure(_):
                Image(systemName: "ant.circle.fill")
                    .iconRenderring()
                    .transition(.scale)
            @unknown default:
                Image(systemName: "ant.circle.fill")
                    .iconRenderring()
            }
        }
        .padding(40)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
