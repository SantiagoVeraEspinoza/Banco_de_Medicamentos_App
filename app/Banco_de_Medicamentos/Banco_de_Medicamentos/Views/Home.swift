// Acuerdos

import Foundation
import SwiftUI

struct SecondView: View {
    
    @State private var curr_id = "4zN5sy2Lhkuguh3o35Et"
    @State private var curr_center_id = "ImMQGZrYKCY9NbFUgIim"
    
    @EnvironmentObject var inventoryManager: InventoryFirestoreManager
    @EnvironmentObject var centerManager: CenterFirestoreManager
    
    //firestoreManager.fetchCenterFromInventory(center_id: "ImMQGZrYKCY9NbFUgIim")
    
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
            Text("El Banco de Alimentos se enorgullece de presentarte un nuevo servicio para el bienestar de ti y tu familia Con la confianza del Banco de Alimentos, ahora para medicamentos.")
            Text("My test: \(inventoryManager.data?.id ?? "")")
                    .padding()
            
            Text("Inventory data from Firestore: \(inventoryManager.data?.idCentro ?? "")")
                        .onAppear {
                            // Call fetchData when the view appears - 4zN5sy2Lhkuguh3o35Et - G3oT7wIi0IpmE0hzkD7d
                            inventoryManager.fetchData(curr_id: curr_id)
                        }
            
            Text("Center data from Firestore: \(centerManager.data?.nombre ?? "")")
                        .onAppear {
                            // Call fetchData when the view appears - 4zN5sy2Lhkuguh3o35Et - G3oT7wIi0IpmE0hzkD7d
                            centerManager.fetchData(curr_id: curr_center_id)
                            print(curr_center_id)
                        }
            
            Button("Cambiar Valor") {
                // Modificar la variable al ser presionado el botón
                if curr_id == "4zN5sy2Lhkuguh3o35Et" {
                    curr_id = "G3oT7wIi0IpmE0hzkD7d"
                } else {
                    curr_id = "4zN5sy2Lhkuguh3o35Et"
                }
                
                inventoryManager.fetchData(curr_id: curr_id)
                
                curr_center_id = inventoryManager.data?.idCentro ?? curr_center_id
                centerManager.fetchData(curr_id: curr_center_id)
            }
            
            Text("Curr id:  \(curr_id)")
            
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
            .environmentObject(InventoryFirestoreManager())
            .environmentObject(CenterFirestoreManager())
    }
}
