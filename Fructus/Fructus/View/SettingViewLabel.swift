//
//  SettingViewLabel.swift
//  Fructus
//
//  Created by BigStep on 29/08/22.
//

import Foundation

import SwiftUI

struct SettingViewLabel: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY

    var body: some View {
      HStack {
        Text(labelText.uppercased()).fontWeight(.bold)
        Spacer()
        Image(systemName: labelImage)
      }
    }
}

struct SettingViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingViewLabel(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
