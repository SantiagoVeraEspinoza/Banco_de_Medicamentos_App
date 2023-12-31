import SwiftUI

struct MedicinaRow: View {
    var medicina:Medicina
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: medicina.imageUrl)){image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            } placeholder: {
                ProgressView()
            }
            Text(medicina.name)
            Spacer()
        }
    }
}

struct MedicinaRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MedicinaRow(medicina: MedicinasViewModel().medicinas[0])
            MedicinaRow(medicina: MedicinasViewModel().medicinas[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
