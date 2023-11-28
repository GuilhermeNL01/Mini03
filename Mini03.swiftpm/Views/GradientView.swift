//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

struct GradientView: View {
    @State private var animatedGradient = false
    var body: some View {
        LinearGradient(colors: [.purple,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
            .hueRotation(.degrees(animatedGradient ? 45: 0))
            .ignoresSafeArea()
            .onAppear { withAnimation(.linear(duration: 5.0).repeatForever(autoreverses: true))
                {
                    animatedGradient.toggle()
                }
            }
    }
}

#Preview {
    GradientView()
}
