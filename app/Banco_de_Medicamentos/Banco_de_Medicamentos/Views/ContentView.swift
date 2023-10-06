import SwiftUI

struct ContentView: View {
    @State private var showDelayedView = false
    
    var body: some View {
        NavigationView {
            GeometryReader{geo in
                ZStack{
                    Image("fondo app")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height+100, alignment: .center)
                        .opacity(1.0)
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 200, alignment: .center).offset(x: 0, y: -50)
                    NavigationLink(destination: SecondView().navigationBarBackButtonHidden(true), isActive: $showDelayedView) {
                            Text("Go to Second View")
                    }
                    .opacity(0) // Hide the navigation link visually
                    .onAppear {
                        // After 3 seconds, set isActive to true to trigger the navigation
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showDelayedView = true
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
