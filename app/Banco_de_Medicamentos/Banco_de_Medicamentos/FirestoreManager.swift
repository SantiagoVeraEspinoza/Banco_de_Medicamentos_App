//
//  FirestoreManager.swift
//  Banco_de_Medicamentos
//
//  Created by Santiago Vera on 03/10/23.
//

import Foundation
import Firebase
import FirebaseFirestore

struct Inventario: Identifiable {
    var id: String
    
    var idMedicamento: String
    var idCentro: String
    var disponible: Bool
    var peligro: Bool

    init(id: String, idMedicamento: String, idCentro: String, disponible: Bool, peligro: Bool) {
        self.id = id
        self.idMedicamento = idMedicamento
        self.idCentro = idCentro
        self.disponible = disponible
        self.peligro = peligro
    }
}

class FirestoreManager: ObservableObject {
    
    private var db = Firestore.firestore()
    @Published var data: Inventario?
    
    func fetchDB() {
        let docRef = db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Inventario").document("G3oT7wIi0IpmE0hzkD7d")

        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }

            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("data", data)
                    if let disponible = data["disponible"] as? Bool {
                        self.data?.disponible = disponible
                    }
                    //self.data = data["disponible"] as? String ?? ""
                }
            }
        }
    }
    
    func fecthAllInventories() {
        db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Inventario").getDocuments() { (querySnapshot, error) in
                        if let error = error {
                                print("Error getting documents: \(error)")
                        } else {
                                for document in querySnapshot!.documents {
                                        print("\(document.documentID): \(document.data())")
                                }
                        }
        }
    }
    
    func fetchCenterFromInventory(center_id: String){

        let docRef = db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Centro").document(center_id)

        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }

            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("data", data)
                    //self.data. = data["nombre"] as? String ?? ""
                }
            }
        }
    }
    
    func fetchData(){
        db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Inventario").document("G3oT7wIi0IpmE0hzkD7d")
            .addSnapshotListener { documentSnapshot, error in
                guard let document = documentSnapshot else {
                    print("Error fetching document: \(error!)")
                    return
                }
                guard let data = document.data(),
                    let idMedicamento = data["idMedicamento"] as? String,
                    let idCentro = data["idCentro"] as? String,
                    let disponible = data["disponible"] as? Bool,
                    let peligro = data["peligro"] as? Bool else {
                    print("Document data was empty.")
                    return
                }
                let id = document.documentID
                let inventario = Inventario(id: id, idMedicamento: idMedicamento, idCentro: idCentro, disponible: disponible, peligro: peligro)
                DispatchQueue.main.async {
                    self.data = inventario
                }
            }
    }
    
    init() {
        fetchDB()
        fecthAllInventories()
    }
}
