//
//  CoverImageView.swift
//  Africa
//
//  Created by BigStep on 30/08/22.
//

import SwiftUI

struct CoverImageView: View {
    var coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView {
            ForEach(coverImages) {coverImage in
                Image(coverImage.name)
                    .resizable()
                    .scaledToFill()
            }
        }//Tab View
        .tabViewStyle(.page)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
