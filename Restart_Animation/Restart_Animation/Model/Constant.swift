//
//  Constant.swift
//  Restart_Animation
//
//  Created by BigStep on 24/08/22.
//

import Foundation

enum Constant {
    case onboarding
    
    var value: String {
        switch self {
        case .onboarding:
            return "key_onboarding"
        }
    }
}
