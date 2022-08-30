//
//  FructusApp.swift
//  Fructus
//
//  Created by BigStep on 25/08/22.
//

import SwiftUI

@main
struct FructusApp: App {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
