import Foundation

struct Medicina: Identifiable{
    var id: String = UUID().uuidString
    var name: String
    var descripcion: String
    var prescripcion: Bool
    var imageUrl: String
}
