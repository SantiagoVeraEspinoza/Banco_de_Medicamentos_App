import Foundation
import FirebaseFirestore

class CentroViewModel: ObservableObject {
    @Published var centros = [Centro]()
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Centro").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            self.centros = documents.map{ (queryDocumentSnapshot) -> Centro in
                let data = queryDocumentSnapshot.data()
                let descripcion = data["descripcion"] as? String ?? ""
                let imageUrl = data["urlImagen"] as? String ?? ""
                let nombre = data["nombre"] as? String ?? ""
                let longitud = data["longitud"] as? String ?? ""
                let latitude = data["latitud"] as? String ?? ""
                return Centro(nombre: nombre, descripcion: descripcion, imageUrl: imageUrl, latitude: latitude, longitude: longitud)
            }
        }
    }
}
