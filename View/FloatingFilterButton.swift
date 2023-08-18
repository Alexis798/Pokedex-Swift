//
//  FloatingFilterButton.swift
//  Pokedex (iOS)
//
//  Created by Admin on 16/8/23.
//

import SwiftUI

struct FloatingFilterButton: View {
    var imageName: String
    var backgroundColor: Color = .purple
    @Binding var show: Bool
    
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }, label: {
            Image(imageName).resizable().frame(width: 24, height: 24).padding(16)
        }).background(backgroundColor).foregroundColor(.white).clipShape(Circle()).shadow(color: .black, radius: 30, x: 0.0, y: 0.0)
    }
}

//struct FloatingFilterButton_Previews: PreviewProvider {
//    static var previews: some View {
//        FloatingFilterButton()
//    }
//}
