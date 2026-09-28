import SwiftUI

private let homigoTeal = Color(red: 0.106, green: 0.42, blue: 0.388)

@main
struct HomigoCareApp: App {
    var body: some Scene {
        WindowGroup { WelcomeView() }
            .preferredColorScheme(.light)
    }
}

struct WelcomeView: View {
    @State private var showAppleComingSoon = false

    var body: some View {
        VStack(spacing: 16) {
            Text("HomigoCare")
                .font(.largeTitle.bold())
                .foregroundStyle(homigoTeal)
            Text("Trusted care, delivered to your home.")
                .foregroundStyle(.secondary)
            Button("Get started") {}
                .buttonStyle(.borderedProminent)
                .tint(homigoTeal)
                .padding(.top, 16)
            Button {
                showAppleComingSoon = true
            } label: {
                Label("Sign in with Apple", systemImage: "apple.logo")
            }
            .buttonStyle(.bordered)
            .tint(.black)
            .padding(.top, 12)
        }
        .padding(24)
        .alert("Coming soon", isPresented: $showAppleComingSoon) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Sign in with Apple will be available in a future update.")
        }
    }
}
