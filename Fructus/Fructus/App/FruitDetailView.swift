//
//  FruitDetailView.swift
//  Fructus
//
//  Created by BigStep on 26/08/22.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: Properties
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView {
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 15) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[0])
                        .padding(.horizontal)
                    
                    Text(fruit.headline)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    Text("Learn more about \(fruit.title)")
                        .font(.title)
                        .foregroundColor(fruit.gradientColors[0])
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    Text(fruit.description)
                        .font(.title3)
                        .fontWeight(.light)
                        .padding(.horizontal)
                    
                    SourceLinkView()
                        .padding(.bottom, 40)
                        .padding(.top, 10)
                    
                }//VStack
            }//Scroll View
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
            .ignoresSafeArea(.all, edges: .all)
        }//Navigation View
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: FruitDataModel.fruits[2])
    }
}
