//
//  ContentView.swift
//  Restart
//
//  Created by Aleksandr Skorotkin on 16.01.2023.
//  Copyright © 2023 ADSkor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
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
