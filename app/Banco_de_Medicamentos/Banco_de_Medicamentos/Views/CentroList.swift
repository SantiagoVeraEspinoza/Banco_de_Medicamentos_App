import SwiftUI

struct CentroList: View {
    var body: some View {
        NavigationView {
            List(centros){ centro in
                NavigationLink {
                    CentroDetail(centro: centro)
                } label: {
                    CentroRow(centro: centro)
                }
            }.navigationTitle("Centros")
        }
    }
}

struct CentroList_Previews: PreviewProvider {
    static var previews: some View {
        CentroList()
    }
}
