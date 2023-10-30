import SwiftUI

struct MedicinaList: View {
    @ObservedObject private var viewModel = MedicinasViewModel()
    var body: some View {
        NavigationView{
            List(viewModel.medicinas){medicina in
                NavigationLink{
                    MedicinaDetail(medicina: medicina)
                } label: {
                    MedicinaRow(medicina: medicina)
                }
            }.navigationTitle("Medicinas")
                .onAppear{ self.viewModel.fetchData() }
        }
        
    }
}

struct MedicinaList_Previews: PreviewProvider {
    static var previews: some View {
        MedicinaList()
    }
}
