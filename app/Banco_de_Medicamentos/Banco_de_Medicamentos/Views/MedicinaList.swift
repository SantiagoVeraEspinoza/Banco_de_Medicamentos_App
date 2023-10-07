import SwiftUI

struct MedicinaList: View {
    var body: some View {
        NavigationView{
            List(medicinas){medicina in
                NavigationLink{
                    MedicinaDetail(medicina: medicina)
                } label: {
                    MedicinaRow(medicina: medicina)
                }
            }.navigationTitle("Medicinas")
            
        }
    }
}

struct MedicinaList_Previews: PreviewProvider {
    static var previews: some View {
        MedicinaList()
    }
}
