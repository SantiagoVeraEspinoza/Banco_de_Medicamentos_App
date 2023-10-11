import Foundation
import SwiftUI
//import CoreLocation

struct Centro: Identifiable {
    var id: String = UUID().uuidString
    var nombre: String
    var descripcion: String
    var imageUrl: String
    var latitude: String
    var longitude: String
    
//    struct Coordinates: Hashable, Codable {
//        var latitude: Double
//        var longitude: Double
//    }
//    private var coordinates: Coordinates
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: Centro.latitude,
//            longitude: Centro.longitude)
//    }
}
