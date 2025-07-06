//
//  ContentView.swift
//  ToDoux
//
//  Created by Antoine BODART on 28/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("hasLaunchedBefore") private var hasLaunchedBefore = false
    @State private var isFadingIn = false
    
    var body: some View {
        
        if hasLaunchedBefore {
            
            ToDoView()
                .opacity(isFadingIn ? 1 : 0)
                .onAppear {
                    withAnimation(.easeIn(duration: 0.5)) {
                        isFadingIn = true
                    }
                }
            
        } else {
         OnboardingView(isOnboardingActive: $hasLaunchedBefore)
        }
    }
}

#Preview {
    ContentView()
}
