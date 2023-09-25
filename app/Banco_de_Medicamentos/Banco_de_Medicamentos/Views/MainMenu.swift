//
//  MainMenu.swift
//  Banco_de_Medicamentos
//
//  Created by user245583 on 9/22/23.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        HStack{
            NavigationLink(destination: MedicinaList()){
                Text("Medicinas")
            }
            NavigationLink(destination: CentroList()){
                Text("Centros")
            }

        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
