//
//  Banco_de_MedicamentosApp.swift
//  Banco_de_Medicamentos
//
//  Created by user246310 on 8/24/23.
//

import SwiftUI
import Firebase

@main
struct Banco_de_MedicamentosApp: App {
    @StateObject var firestoreManager = FirestoreManager()
    
    init() {
            FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(firestoreManager)
        }
    }
}
