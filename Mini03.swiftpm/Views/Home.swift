//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI

struct Home: View {
    @AppStorage("currentPage") var currentPage = 1
    @State private var isPresentingOnboarding = false

    var body: some View {
        VStack {
            Text("Home_Screen")
                .font(.title)
                .fontWeight(.bold)
            Text("This is the homeScreen of the App")
                .font(.body)
                .fontWeight(.medium)

            Button(action: {
                isPresentingOnboarding.toggle()
            }, label: {
                Image(systemName: "doc.questionmark.fill")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.black.opacity(0.4))
                    .cornerRadius(10)
            })
            .fullScreenCover(isPresented: $isPresentingOnboarding, content: {
                OnboardingScreen()
            })
        }
    }
}

#Preview {
    GradientView()
}



