import SwiftUI

struct SignUp: View {
    @State private var mail: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    
    var body: some View {
        VStack{
            Form{
                TextField(text: $mail, prompt: Text("Correo")){}
                SecureField(text: $password, prompt: Text("Contrasena")){}
                SecureField(text: $repeatPassword, prompt: Text("Repita contrasena")){}
                Button(
                    "Registrarse",
                    action: {}
                )
                Button(
                    action: {},
                    label: {
                        Label("Registrarse con Apple",systemImage: "apple.logo")
                    }
                )
                Button(
                    action: {},
                    label: {
                        Label("Registrarse con Google",systemImage: "g.circle")
                    }
                )
            }
        }.padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
