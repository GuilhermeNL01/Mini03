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
        ZStack{
            GradientView()
                .ignoresSafeArea()

            VStack {
                Text("Home_Screen")
                    .font(.title)
                    .fontWeight(.bold)
                Text("This is the homeScreen of the App")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}
#Preview {
    GradientView()
}



