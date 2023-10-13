import SwiftUI

struct MedicinaDetail: View {
    var medicina:Medicina
    var body: some View {
        ScrollView{
            
            CircleImage(ImageUrl: medicina.imageUrl).ignoresSafeArea(edges: .top).frame(height: 300)
            
            VStack(alignment: .leading){
                Text(medicina.name).font(.title)
                Divider()
                Text("Acerca de \(medicina.name)").font(.title2)
                Text(medicina.descripcion)
                Divider()
                if(medicina.prescripcion){
                    Text("\(Image(systemName: "exclamationmark.triangle")) Prescripcion necesaria").foregroundStyle(.red).bold()
                }
            }.padding()
        }
        .navigationTitle(medicina.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MedicinaDetail_Previews: PreviewProvider {
    static var previews: some View {
        MedicinaDetail(medicina: MedicinasViewModel().medicinas[0])
    }
}
