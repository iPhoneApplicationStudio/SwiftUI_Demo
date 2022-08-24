//
//  ContentView.swift
//  Restart_Animation
//
//  Created by BigStep on 24/08/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: Properties
    @AppStorage(Constant.onboarding.value) var isOnboardingViewActive: Bool = true
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
