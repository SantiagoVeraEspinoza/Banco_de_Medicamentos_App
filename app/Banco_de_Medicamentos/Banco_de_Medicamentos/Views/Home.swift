// Acuerdos

import Foundation
import SwiftUI



struct SecondView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
            Spacer()
            Button("Iniciar"){}
            Button("Aviso de privacidad") {
            }
        }.padding()
    }
}

struct SecondPreview: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
