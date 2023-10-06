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
                            

                        
                        Text("Medicinas").bold()
                            .shadow(color: .white, radius: 1)
                            .shadow(color: .white, radius: 1)
                            .shadow(color: .white, radius: 1)
               
                            .font(.system(.largeTitle, design: .rounded).weight(.heavy))
                            //.foregroundStyle(.black)
                            
                            
                                             
                        
                    }
                }
            }
            Spacer()
            NavigationLink(destination: CentroList()){
                GeometryReader{geo in
                    ZStack{
                        Image("centro_img").scaledToFill()
                        //.edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        
                        Text("Centros").bold()
                            .shadow(color: .white, radius: 1)
                            .shadow(color: .white, radius: 1)
                            .shadow(color: .white, radius: 1)
                           
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
