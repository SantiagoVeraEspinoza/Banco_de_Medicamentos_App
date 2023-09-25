import SwiftUI

struct CentroDetail: View {
    var centro:Centro
    var body: some View {
        let url = URL(string: "maps://?saddr=&daddr=\(centro.locationCoordinate.latitude),\(centro.locationCoordinate.longitude)")
        ScrollView {
            MapView(coordinate: centro.locationCoordinate).ignoresSafeArea(edges: .top).frame(height: 300)
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
