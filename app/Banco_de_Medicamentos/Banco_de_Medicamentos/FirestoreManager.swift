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

struct Centros: Identifiable {
    var id: String
    
    var nombre: String
    var descripcion: String
    var latitud: String
    var longitud: String
    var urlImagen: String

    init(id: String, nombre: String, descripcion: String, latitud: String, longitud: String, urlImagen: String) {
        self.id = id
        self.nombre = nombre
        self.descripcion = descripcion
        self.latitud = latitud
        self.longitud = longitud
        self.urlImagen = urlImagen
    }
}

struct Medicamentos: Identifiable {
    var id: String
    
    var nombre: String
    var descripcion: String
    var latitud: String
    var longitud: String
    var urlImagen: String

    init(id: String, nombre: String, descripcion: String, latitud: String, longitud: String, urlImagen: String) {
        self.id = id
        self.nombre = nombre
        self.descripcion = descripcion
        self.latitud = latitud
        self.longitud = longitud
        self.urlImagen = urlImagen
    }
}

protocol DocumentFetching {
    func fetchData(curr_id: String)
}

class BaseFirestoreManager<T>: ObservableObject where T: Identifiable {
    
    @Published var data: T?

    func updateData(_ newData: T) {
        DispatchQueue.main.async {
            self.data = newData
        }
    }
}

class InventoryFirestoreManager: BaseFirestoreManager<Inventario>, DocumentFetching {
    
    private var db = Firestore.firestore()
    
    func fetchData(curr_id: String){
        //G3oT7wIi0IpmE0hzkD7d
        db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Inventario").document(curr_id)
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
                    self.updateData(inventario)
                }
            }
    }
}

class CenterFirestoreManager: BaseFirestoreManager<Centros>, DocumentFetching {
    
    private var db = Firestore.firestore()
    
    func fetchData(curr_id: String){
        //G3oT7wIi0IpmE0hzkD7d
        db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Centro").document(curr_id)
            .addSnapshotListener { documentSnapshot, error in
                guard let document = documentSnapshot else {
                    print("Error fetching document: \(error!)")
                    return
                }
                guard let data = document.data(),
                    let nombre = data["nombre"] as? String,
                    let descripcion = data["descripcion"] as? String,
                    let latitud = data["latitud"] as? String,
                    let longitud = data["longitud"] as? String,
                    let urlImagen = data["urlImagen"] as? String else {
                    print("Document data was empty.")
                    return
                }
                let id = document.documentID
                let centro = Centros(id: id, nombre: nombre, descripcion: descripcion, latitud: latitud, longitud: longitud, urlImagen: urlImagen)
                DispatchQueue.main.async {
                    self.updateData(centro)
                }
            }
    }
}
