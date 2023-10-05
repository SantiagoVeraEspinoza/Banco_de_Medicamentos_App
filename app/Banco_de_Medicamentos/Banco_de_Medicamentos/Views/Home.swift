// Acuerdos

import Foundation
import SwiftUI



struct SecondView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
            Text("El Banco de Alimentos se enorgullece de presentarte un nuevo servicio para el bienestar de ti y tu familia Con la confianza del Banco de Alimentos, ahora para medicamentos.")
            Spacer()
            NavigationLink(destination: MainMenu()){
                
                Text("Iniciar")
                    .bold()
                    .font(.system(.largeTitle, design: .rounded).weight(.heavy))
                    //.border(Color.black, width: 0.5)
                                
            }
            Spacer()
            Link("Aviso de privacidad", destination: URL(string: "https://bdalimentos.org/aviso/")!)
        }.padding()
    }
}

struct SecondPreview: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
