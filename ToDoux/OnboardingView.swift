//
//  OnboardingView.swift
//  ToDoux
//
//  Created by Antoine BODART on 28/06/2025.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var isOnboardingActive: Bool
    @State private var isFadingOut: Bool = false
    
    var body: some View {
            VStack(spacing: 20) {
                ZStack() {
                    Circle()
                        .fill(Color.purple)
                        .opacity(0.15)
                    
                    Image("messy")
                        .resizable()
                    
                }
                .scaledToFit()
                
                Text("Don't Be Messy, Be Organized")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("ToDoux is a very simple and effective to-do list app wich helps you to manage time.")
                    .font(.body)
                    .foregroundColor(.black.opacity(0.7))
                Button("Get Started", action: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isFadingOut = true
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        isOnboardingActive = true
                    }
                })
            }
            .padding(24)
            .opacity(isFadingOut ? 0 : 1)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    OnboardingView(isOnboardingActive: .constant(true))
}
