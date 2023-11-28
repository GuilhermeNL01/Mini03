//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI
var totalPages = 3

import SwiftUI

struct OnboardingScreen: View {
    @AppStorage("currentPage") var currentPage = 1
    let totalPages = 3

    var body: some View {
        ZStack {
            if currentPage == 1 {
                ScreenView(image: "Fakepng", title: "title", details: "")
            } else if currentPage == 2 {
                ScreenView(image: "Fakepng2", title: "title2", details: "")
            } else if currentPage == 3 {
                ScreenView(image: "Fakepng3", title: "title3", details: "")
            }
        }
    }
}

#Preview {
    OnboardingScreen()
}

