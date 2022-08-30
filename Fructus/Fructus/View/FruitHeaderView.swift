//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by BigStep on 27/08/22.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: Properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 4, x: 4, y: 4)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                .padding(.vertical, 50)
        }
        .frame(height:350)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: FruitDataModel.fruits[2])
            .previewLayout(.sizeThatFits)
    }
}
