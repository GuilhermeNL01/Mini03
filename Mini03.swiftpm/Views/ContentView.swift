import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1

    var body: some View {

        if currentPage > totalPages {
            Home()
        }
        else{
            OnboardingScreen()
        }
    }
}
