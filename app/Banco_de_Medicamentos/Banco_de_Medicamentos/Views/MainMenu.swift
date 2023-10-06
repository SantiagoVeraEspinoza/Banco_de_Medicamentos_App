//
//  MainMenu.swift
//  Banco_de_Medicamentos
//
//  Created by user245583 on 9/22/23.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        VStack{
            
            NavigationLink(destination: MedicinaList()){
                GeometryReader{geo in
                    ZStack{
                        Image("medicinas_img").resizable()
                            .scaledToFill()
                            //.edgesIgnoringSafeArea(.all)
                            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                            .blur(radius: 3)
                            .grayscale(0.50)
                            

                        
                        Text("Medicinas").bold()
                            //.foregroundColor(.white)
                            .shadow(color: .white, radius: 1)
                            .shadow(color: .white, radius: 1)
                            //.shadow(color: .white, radius: 1)
               
                            .font(.system(.largeTitle, design: .rounded).weight(.heavy))
                            //.foregroundStyle(.black)
                            
                            
                                             
                        
                    }
                }
            }
            
            NavigationLink(destination: CentroList()){
                GeometryReader{geo in
                    ZStack{
                        Image("centro_img").scaledToFill()
                        //.edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .blur(radius: 3)
                        .grayscale(0.50)
                        
                        Text("Centros").bold()
                            //.foregroundColor(.white)
                            .shadow(color: .white, radius: 1)
                            .shadow(color: .white, radius: 1)
                            //.shadow(color: .white, radius: 1)
                           
                            .font(.system(.largeTitle, design: .rounded).weight(.heavy))
                            //.foregroundColor(.black)
                            
                    }
                }
            }
        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
