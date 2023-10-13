import SwiftUI
import CoreLocation

struct CentroDetail: View {
    var centro:Centro
    var body: some View {
        let floatLatitude = (centro.latitude as NSString).doubleValue
        let floatLongitude = (centro.longitude as NSString).doubleValue
        var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: floatLatitude, longitude: floatLongitude
            )
        }
        
        let url = URL(string: "maps://?saddr=&daddr=\(floatLatitude),\(floatLongitude)")
        ScrollView {
            MapView(coordinate: locationCoordinate).ignoresSafeArea(edges: .top).frame(height: 300)
            CircleImage(ImageUrl: centro.imageUrl).ignoresSafeArea(edges: .top).offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(centro.nombre).font(.title)
                Divider()
                Text(centro.descripcion)
                Divider()
                Button(
                  action: {
                      if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                      }
                  }, label: {
                      Label("Como llegar", systemImage: "map")
                  }
                ).buttonStyle(.borderedProminent)
                
                
            }.padding()
        }
    }
}

struct CentroDetail_Previews: PreviewProvider {
    static var previews: some View {
        CentroDetail(centro: CentroViewModel().centros[0])
    }
}
