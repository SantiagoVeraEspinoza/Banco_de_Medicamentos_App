//
//  ContentView.swift
//  Banco_de_Medicamentos
//
//  Created by user246310 on 8/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{geo in
            ZStack{
                Image("fondo app")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)                    .frame(width: geo.size.width, height: geo.size.height+100, alignment: .center)
                    .opacity(1.0)
                Image("logo")
                    .resizable()
                    .frame(
                        
                        width: 300,height: 200, alignment: .center)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
