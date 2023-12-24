//
//  ContentView.swift
//  VisionOSRealityViewEntityAnimation
//
//  Created by Sadao Tokuyama on 12/24/23.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        RealityView { content in
            do {
                let entity = try await Entity(named: "toy_drummer_idle")
                let animation = entity.availableAnimations[0]
                entity.playAnimation(animation.repeat())
                content.add(entity)
            } catch {
                print("Entity encountered an error while loading the model.")
                return
            }
         }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
