// Acuerdos

import Foundation
import SwiftUI

struct SecondView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    
    @State private var curr_id = "4zN5sy2Lhkuguh3o35Et"
    
    //firestoreManager.fetchCenterFromInventory(center_id: "ImMQGZrYKCY9NbFUgIim")
    
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
            Text("El Banco de Alimentos se enorgullece de presentarte un nuevo servicio para el bienestar de ti y tu familia Con la confianza del Banco de Alimentos, ahora para medicamentos.")
            Text("My test: \(firestoreManager.data?.id ?? "")")
                    .padding()
            
            Text("Data from Firestore: \(firestoreManager.data?.idCentro ?? "")")
                        .onAppear {
                            // Call fetchData when the view appears - 4zN5sy2Lhkuguh3o35Et - G3oT7wIi0IpmE0hzkD7d
                            firestoreManager.fetchData(curr_id: curr_id)
                        }
            
            Button("Cambiar Valor") {
                // Modificar la variable al ser presionado el botón
                if curr_id == "4zN5sy2Lhkuguh3o35Et" {
                    curr_id = "G3oT7wIi0IpmE0hzkD7d"
                } else {
                    curr_id = "4zN5sy2Lhkuguh3o35Et"
                }
                
                firestoreManager.fetchData(curr_id: curr_id)
            }
            
            Text("Curr id:  \(curr_id)")
            
            Spacer()
            NavigationLink(destination: MainMenu()){
                Text("Iniciar")
            }
            Link("Aviso de privacidad", destination: URL(string: "https://bdalimentos.org/aviso/")!)
        }.padding()
    }
}

struct SecondPreview: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(FirestoreManager())
    }
}
