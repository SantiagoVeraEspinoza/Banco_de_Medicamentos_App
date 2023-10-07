import SwiftUI

struct CentroRow: View {
    var centro: Centro
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: centro.imageUrl)){image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            } placeholder: {
                ProgressView()
            }
            Text(centro.name)
            Spacer()
        }
    }
}

struct CentroRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CentroRow(centro: centros[0])
            CentroRow(centro: centros[1])
        }
    }
}
