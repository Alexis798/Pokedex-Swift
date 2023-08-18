//
//  PokedexView.swift
//  Pokedex (iOS)
//
//  Created by Admin on 14/8/23.
//

import SwiftUI

struct PokedexView: View {
    //In this private var we define that we want only two items for row
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    @State var showFilterButtons = false
    @State var filterApplied = false
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .bottomTrailing) {
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 16) {
                        let dataSource = filterApplied ? viewModel.filteredPokemon : viewModel.pokemon
                        ForEach(dataSource) { pokemon  in
                            NavigationLink (
                                destination: NavigationLazyView(PokemonStats(pokemon: pokemon, viewModel: viewModel)), label: {
                                    PokemonCell(pokemon: pokemon, viewModel: viewModel)
                                }
                            )
                        }
                        }
                }
                .navigationTitle("Pokedex")
                
                VStack {
                    
                    if showFilterButtons {
                        FloatingFilterButton(imageName: "fire", backgroundColor: .red, show: $showFilterButtons) {
                            filterApplied.toggle()
                            showFilterButtons.toggle()
                            viewModel.filterPokemon(by: "fire")
                        }
                        FloatingFilterButton(imageName: "leaf", backgroundColor: .green, show: $showFilterButtons) {
                            filterApplied.toggle()
                            showFilterButtons.toggle()
                            viewModel.filterPokemon(by: "poison")
                        }
                        FloatingFilterButton(imageName: "water", backgroundColor: .blue, show: $showFilterButtons) {
                            filterApplied.toggle()
                            showFilterButtons.toggle()
                            viewModel.filterPokemon(by: "water")
                        }
                        FloatingFilterButton(imageName: "light", backgroundColor: .yellow, show: $showFilterButtons) {
                            filterApplied.toggle()
                            showFilterButtons.toggle()
                            viewModel.filterPokemon(by: "electric")
                        }
                    }
                    
                    let imageName = filterApplied ? "refresh" : "filter"
                    FloatingFilterButton(imageName: imageName, show: $showFilterButtons) {
                        filterApplied ? filterApplied.toggle() : showFilterButtons.toggle()
                    }.rotationEffect(.init(degrees: self.showFilterButtons ? 180 : 0))
                }.padding()
            }
            
        }
    }
}

//In this version with work the ForEach without api
//var body: some View {
//    NavigationView {
//        ScrollView {
//            LazyVGrid(columns: gridItems, spacing: 16) {
//                ForEach(0..<151) { _ in PokemonCell(pokemon: MOCK_POKEMON[2])
//                }
//                }
//        }
//        .navigationTitle("Pokedex")
//    }
//}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
.previewInterfaceOrientation(.portrait)
    }
}
