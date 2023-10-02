import SwiftUI

struct LogIn: View {
    @State private var mail: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            Form{
                TextField(text: $mail, prompt: Text("Correo")){}
                SecureField(text: $password, prompt: Text("Contrasena")){}
                Button(
                    "Iniciar sesion",
                    action: {}
                )
                Button(
                    action: {},
                    label: {
                        Label("Iniciar sesion con Apple",systemImage: "apple.logo")
                    }
                )
                Button(
                    action: {},
                    label: {
                        Label("Iniciar sesion con Google",systemImage: "g.circle")
                    }
                )
            }
        }
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
