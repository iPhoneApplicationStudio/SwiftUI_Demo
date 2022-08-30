//
//  FruitCellView.swift
//  Fructus
//
//  Created by BigStep on 26/08/22.
//

import SwiftUI

struct FruitCellView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    var body: some View {
        HStack(spacing: 10) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 90, alignment: .leading)
                //.shadow(color: .black.opacity(0.3), radius: 3, x: 3, y: 3)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(5)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(fruit.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .fontWeight(.light)
            }//VStack
            .frame(height: 120)
        }//HSTACK
        .padding(.horizontal, 5)
    }
}

struct FruitCellView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCellView(fruit: FruitDataModel.fruits[2])
            .previewLayout(.sizeThatFits)
    }
}
