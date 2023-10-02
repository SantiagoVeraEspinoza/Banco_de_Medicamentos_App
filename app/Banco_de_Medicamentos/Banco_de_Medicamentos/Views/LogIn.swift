import SwiftUI

struct LogIn: View {
    var body: some View {
        VStack{
            Button(
                action: {},
                label: {
                    Label("Inicia sesion con Apple",systemImage: "apple.logo")
                }
            ).buttonStyle(.bordered)
            Button(
                action: {},
                label: {
                    Label("Inicia sesion con Google",systemImage: "g.circle")
                }
            ).buttonStyle(.bordered)
        }
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
