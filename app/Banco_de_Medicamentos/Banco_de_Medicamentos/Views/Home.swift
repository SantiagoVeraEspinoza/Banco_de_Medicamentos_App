//
//  Home.swift
//  Banco_de_Medicamentos
//
//  Created by Santiago Vera on 07/09/23.
//

import Foundation
import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("Esta es la segunda vista").navigationBarTitle("Segunda Vista", displayMode: .inline)
    }
}

struct SecondPreview: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
