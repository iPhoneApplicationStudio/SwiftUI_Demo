//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by BigStep on 27/08/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrients per 100 gram") {
                Spacer()
                ForEach(0..<nutrients.count, id: \.self) { index in
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        Spacer(minLength: 20)
                        
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.vertical, 10)
                    
                    if index != nutrients.count - 1 {
                        Divider()
                            .background(fruit.gradientColors[0])
                    }
                }
            }//DisclosureGroup
            
        }//Box
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitDataModel.fruits[2])
    }
}
