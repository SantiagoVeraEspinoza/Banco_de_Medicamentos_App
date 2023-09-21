import Foundation

struct Medicina: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var descripcion: String
    var prescripcion: Bool
    var imageUrl: String
}
