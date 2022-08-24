//
//  HomeView.swift
//  Restart_Animation
//
//  Created by BigStep on 24/08/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage(Constant.onboarding.value) var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            //Header
            ZStack {
                CircleGroupView(circleColor: .gray, circleOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }

            //Center
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            //Footer
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName:"arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
