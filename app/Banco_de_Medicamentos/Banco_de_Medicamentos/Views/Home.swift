// Acuerdos

import Foundation
import SwiftUI

struct SecondView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    
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
                            // Call fetchData when the view appears
                            firestoreManager.fetchData()
                        }
            
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
