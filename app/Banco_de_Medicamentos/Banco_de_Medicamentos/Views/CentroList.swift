import SwiftUI

struct CentroList: View {
    @ObservedObject private var viewModel = CentroViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.centros){ centro in
                NavigationLink {
                    CentroDetail(centro: centro)
                } label: {
                    CentroRow(centro: centro)
                }
            }.navigationTitle("Centros")
                .onAppear{ self.viewModel.fetchData() }
        }
    }
}

struct CentroList_Previews: PreviewProvider {
    static var previews: some View {
        CentroList()
    }
}
