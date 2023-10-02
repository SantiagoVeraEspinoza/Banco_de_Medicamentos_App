import SwiftUI

struct SignUp: View {
    var body: some View {
        VStack{
            Button(
                action: {},
                label: {
                    Label("Registrate con Apple",systemImage: "apple.logo")
                }
            ).buttonStyle(.bordered)
            Button(
                action: {},
                label: {
                    Label("Registrate con Google",systemImage: "g.circle")
                }
            ).buttonStyle(.bordered)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
