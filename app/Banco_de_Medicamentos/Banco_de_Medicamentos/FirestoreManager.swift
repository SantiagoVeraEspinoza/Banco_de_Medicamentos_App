//
//  FirestoreManager.swift
//  Banco_de_Medicamentos
//
//  Created by Santiago Vera on 03/10/23.
//

import Foundation
import Firebase
import FirebaseFirestore

class FirestoreManager: ObservableObject {
    
    @Published var test: String = ""
    
    func fetchDoc() {
        let db = Firestore.firestore()

        let docRef = db.collection("test").document("glIDVg6IkwdpgOfdpwN8")

        docRef.getDocument { (document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }

            if let document = document, document.exists {
                let data = document.data()
                if let data = data {
                    print("data", data)
                    self.test = data["name"] as? String ?? ""
                }
            }
        }
    }
    
    func fetchAllDocs() {
            let db = Firestore.firestore()

            db.collection("test").getDocuments() { (querySnapshot, error) in
                            if let error = error {
                                    print("Error getting documents: \(error)")
                            } else {
                                    for document in querySnapshot!.documents {
                                            print("\(document.documentID): \(document.data())")
                                    }
                            }
            }
    }
    
    init() {
        fetchDoc()
        fetchAllDocs()
    }
}
