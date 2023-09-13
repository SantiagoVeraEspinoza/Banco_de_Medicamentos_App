//
//  Acuerdos.swift
//  Banco_de_Medicamentos
//
//  Created by user245583 on 9/12/23.
//

import SwiftUI

struct Acuerdos: View {
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
            Text("El Banco de Alimentos se enorgullece de presentarte un nuevo servicio para el bienestar de ti y tu familia. Con la confianza del Banco de Alimentos, ahora para medicamentos.").multilineTextAlignment(.center).foregroundColor(.gray)
            Spacer()
            Button("Iniciar"){}.buttonStyle(.borderedProminent)
            Button("Aviso de privacidad") {}
        }.padding()
    }
}

struct Acuerdos_Previews: PreviewProvider {
    static var previews: some View {
        Acuerdos()
    }
}
