import SwiftUI
import CoreLocation

struct CentroDetail: View {
    var centro:Centro
    
    var body: some View {
        var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: centro.latitude, longitude: centro.longitude
            )
        }
        
        let url = URL(string: "maps://?saddr=&daddr=\(centro.latitude),\(centro.longitude)")
        ScrollView {
            MapView(coordinate: locationCoordinate).ignoresSafeArea(edges: .top).frame(height: 300)
            CircleImage(ImageUrl: centro.imageUrl).ignoresSafeArea(edges: .top).offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(centro.name).font(.title)
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
        CentroDetail(centro: centros[2])
    }
}
