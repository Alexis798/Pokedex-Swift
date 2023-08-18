//
//  PokemonStats.swift
//  Pokedex (iOS)
//
//  Created by Admin on 14/8/23.
//

import SwiftUI
import Kingfisher

struct PokemonStats: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    let backgroundColor: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
        
    }
    
    var body: some View {
        ZStack {
            VStack {
                
            
                VStack {
                    HStack {
                        Text    (pokemon.name.capitalized).bold().font(.largeTitle).foregroundColor(.white).padding(.vertical, 20)
                    }.frame(maxWidth: .infinity)
                    
                
                    KFImage(URL(string: pokemon.imageUrl)).resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250).padding([.bottom, .trailing], 4)
              }.padding(20).frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack {
                    ZStack {
                        ScrollView () {
                            
                            HStack {
                                Text(pokemon.type.capitalized).bold().font(.headline).foregroundColor(.white).padding().background(backgroundColor).cornerRadius(15).padding()
                            }
                            
                            Text(pokemon.description).multilineTextAlignment(.center).padding(6)
                            
                            
                            VStack {
                                
                                HStack {
                                    Text("Height").foregroundColor(Color(.systemGray))
                                    Text("\(pokemon.height)")
                                    ProgressView( value: Float(pokemon.height), total: 100).frame(height: 20).tint(.red)
                                }
                                
                                HStack {
                                    Text("Attack").foregroundColor(Color(.systemGray))
                                    Text("\(pokemon.attack)")
                                    ProgressView( value: Float(pokemon.attack), total: 100).frame(height: 20).tint(.yellow)
                                }
                                
                                HStack {
                                    Text("Defense").foregroundColor(Color(.systemGray))
                                    Text("\(pokemon.defense)")
                                    ProgressView( value: Float(pokemon.defense), total: 100).frame(height: 20).tint(.green)
                                }
                                
                                HStack {
                                    Text("Weight").foregroundColor(Color(.systemGray))
                                    Text("\(pokemon.weight)")
                                    ProgressView( value: Float(pokemon.weight), total: 100).frame(height: 20).tint(.teal)
                                }
                                
                                
                            }.padding(.leading, 26).padding(.trailing, 26)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .background(Color.white)
                .cornerRadius(22)
                .edgesIgnoringSafeArea(.bottom)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(backgroundColor)
        .edgesIgnoringSafeArea(.top)

    }
}

//struct PokemonStats_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonStats(pokemon: SAMPLE_POKEMON)
//    }
//}
