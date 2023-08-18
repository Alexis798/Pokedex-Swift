//
//  Pokemon.swift
//  Pokedex (iOS)
//
//  Created by Admin on 14/8/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let height: Int
    let weight: Int
    let attack: Int
    let defense: Int
    var evolutionChain: [EvolutionChain]?
}

struct EvolutionChain: Decodable {
    let id: String?
    let name: String?
}

//This is a model meanwhile we dont conect with the api to show our view skeleton
//let MOCK_POKEMON: [Pokemon] = [
//    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "poison"),
//    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "poison"),
//    .init(id: 2, name: "Venausar", imageUrl: "1", type: "poison"),
//    .init(id: 3, name: "Charmander", imageUrl: "1", type: "fire"),
//    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "fire"),
//    .init(id: 5, name: "Charizard", imageUrl: "1", type: "fire"),
//]

let SAMPLE_POKEMON = Pokemon(id: 1,
                             name: "Bulbasaur",
                             imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334",
                             type: "poison",
                             description: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun’s rays, the seed grows progressively larger.",
                             height: 7,
                             weight: 69,
                             attack: 49,
                             defense: 49,
                             evolutionChain: nil)
