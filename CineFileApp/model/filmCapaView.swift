//
//  filmCapaView.swift
//  CineFileApp
//
//  Created by Ana Luisa Luy on 01/06/25.
//

import SwiftUI

struct filmCapaView: View {
    let film: Film
    var body: some View {
        Image(film.image)
            .resizable()
            .frame(width: 120, height: 180)
            .cornerRadius(15)
    }
}

#Preview {
    filmCapaView(film: Film(image:"filme1", title: "Tudo em Todo o Lugar ao Mesmo Tempo", director: "Daniel Kwan, Daniel Scheinert", description: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado", foto: "filme1capa"))
}

