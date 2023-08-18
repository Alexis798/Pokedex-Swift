//
//  NavigationPrueba.swift
//  Pokedex (iOS)
//
//  Created by Admin on 15/8/23.
//

import SwiftUI

struct NavigationPrueba: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hola")
                Text("Hola")
                Text("Hola")
            }.navigationTitle("All Inboxes")
        }
    }
}

struct NavigationPrueba_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPrueba()
    }
}
