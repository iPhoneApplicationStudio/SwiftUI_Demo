//
//  OnboardingView.swift
//  Restart_Animation
//
//  Created by BigStep on 24/08/22.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage(Constant.onboarding.value) var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Spacer()
                // MARK: Header
                VStack {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                
                Spacer()
                // MARK: Center
                ZStack {
                    CircleGroupView(circleColor: .white, circleOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                
                Spacer()
                // MARK: Footer
                
                ZStack {
                    // Static BG
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    //2 Call to Action
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    //3 - Capsule dynanic width
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    //4 - Circle Draggable
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        
                        Spacer()
                    }
                }
                .frame(height: 80, alignment: .center)
                .padding()
            }
                
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
