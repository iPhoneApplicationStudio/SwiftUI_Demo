//
//  ProductView.swift
//  HorizontalGrid
//
//  Created by Abhinay Maurya on 27/09/22.
//

import SwiftUI

struct ProductView: View {
    //MARK: - Properties
    var product: Product
    
    var body: some View {
        HStack {
            Text(product.name)
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.regular)
                .padding()
                .frame(maxWidth: 150)
        }//HStack
        .background(.black)
        .clipShape(Capsule())
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Product(id: 1, name: "Apple Watch"))
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}
