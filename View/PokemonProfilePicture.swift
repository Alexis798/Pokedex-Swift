//
//  PokemonProfilePicture.swift
//  Pokedex (iOS)
//
//  Created by Admin on 15/8/23.
//

import SwiftUI

struct PokemonProfilePicture: View {
    var body: some View {
        VStack {
            HStack {
                Text    ("Bulbasaur").bold().font(.largeTitle).foregroundColor(.white).padding(.vertical, 20)
                Text("#001").bold().font(.headline).foregroundColor(.white)
            }
            HStack {
                Text("poison").bold().font(.headline).foregroundColor(.white).padding().background(Color.red).cornerRadius(15)
                
                Text("Semilla Pokemon").bold().font(.headline).foregroundColor(.white)
            }
            
            Image("1").resizable()
                  .scaledToFit()
                  .frame(width: 250, height: 250).padding([.bottom, .trailing], 4)
        }.padding(20).frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PokemonProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        PokemonProfilePicture()
    }
}
