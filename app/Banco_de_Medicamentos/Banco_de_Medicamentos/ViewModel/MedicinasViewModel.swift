import Foundation
import FirebaseFirestore

class MedicinasViewModel: ObservableObject {
    @Published var medicinas = [Medicina]()
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("BancoDeMedicamentos").document("fI6Pke7q2ZhMboi5HkC1").collection("Medicamento").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            self.medicinas = documents.map { (queryDocumentSnapshot) -> Medicina in
                let data = queryDocumentSnapshot.data()
                let descripcion = data["descripcion"] as? String ?? ""
                let imageUrl = data["imageUrl"] as? String ?? ""
                let nombre = data["nombre"] as? String ?? ""
                let prescripcion = data["prescripcion"] as? Bool ?? false
                return Medicina(name: nombre, descripcion: descripcion, prescripcion: prescripcion, imageUrl: imageUrl)
            }
        }
    }
}
