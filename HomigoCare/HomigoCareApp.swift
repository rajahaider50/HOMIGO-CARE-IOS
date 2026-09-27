import SwiftUI

@main
struct HomigoCareApp: App {
    var body: some Scene { WindowGroup { WelcomeView() }.preferredColorScheme(.light) }
}

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 16) { Text("HomigoCare").font(.largeTitle.bold()).foregroundStyle(Color(red: 0.106, green: 0.42, blue: 0.388)); Text("Trusted care, delivered to your home.").foregroundStyle(.secondary); Button("Get started") {}.buttonStyle(.borderedProminent).tint(Color(red: 0.106, green: 0.42, blue: 0.388)).padding(.top, 16) }.padding(24)
    }
}
