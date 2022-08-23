//
//  Constant.swift
//  SwiftUI-AsyncImage
//
//  Created by BigStep on 23/08/22.
//

import Foundation

enum Constant: String {
    case imageUrlString
    
    var value: String {
        switch self {
        case .imageUrlString:
            return "https://credo.academy/credo-academy@3x.pn"
        }
    }
}
