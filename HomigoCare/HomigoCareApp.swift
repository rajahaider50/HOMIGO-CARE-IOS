import SwiftUI

private let homigoTeal = Color(red: 0.106, green: 0.42, blue: 0.388)

@main
struct HomigoCareApp: App {
    var body: some Scene { WindowGroup { WelcomeView() }.preferredColorScheme(.light) }
}

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 16) { Text("HomigoCare").font(.largeTitle.bold()).foregroundStyle(homigoTeal); Text("Trusted care, delivered to your home.").foregroundStyle(.secondary); Button("Get started") {}.buttonStyle(.borderedProminent).tint(homigoTeal).padding(.top, 16); Button { } label: { Label("Sign in with Apple", systemImage: "apple.logo") }.buttonStyle(.bordered).tint(.black).overlay(alignment: .bottom) { Text("Coming soon").font(.caption2).foregroundStyle(.secondary).offset(y: 22) }.padding(.top, 20) }.padding(24)
    }
}
