//
//  NavigationLazyView.swift
//  Pokedex (iOS)
//
//  Created by Admin on 15/8/23.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }

    var body: Content {
        build()
    }
}
