//
//  Image+Extension.swift
//  SwiftUI-AsyncImage
//
//  Created by BigStep on 23/08/22.
//

import Foundation
import SwiftUI

extension Image {
    func imageRenderring() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconRenderring() -> some View {
        self
            .imageRenderring()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.50)
    }
}
