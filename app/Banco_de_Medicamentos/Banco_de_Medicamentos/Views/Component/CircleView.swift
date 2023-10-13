import SwiftUI

struct CircleImage: View {
    var ImageUrl:String
    var body: some View {
        AsyncImage(url: URL(string:ImageUrl)){image in image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300, maxHeight: 200)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 4).shadow(radius: 7)
                }
        } placeholder: {
            ProgressView()
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(ImageUrl: "https://www.aspirina.com.mx/sites/g/files/vrxlpx43166/files/2022-10/Aspirina-40_3.jpg")
    }
}
