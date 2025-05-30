//
//  CardDetailView.swift
//  Aula4
//
//  Created by Afonso Rekbaim on 21/05/25.
//

import SwiftUI

struct filmDetailView: View {
    let film: Film
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                
                ZStack{
                    Image(film.foto)
                        .resizable()
                        .frame(width: 480, height: 350)
                        .overlay(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: .blue.opacity(0.1), location: 0.5),
                            .init(color: .white.opacity(1.0), location: 1.0)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                        
                        ))
                    
                    Image(systemName:"chevron.left")
                        .foregroundStyle(.black)
                    
                        
                }
                
                HStack{
                
                Image(film.image)
                        .cornerRadius(30)
                        .scaleEffect(0.6)
                        
                    
                Text(film.title)
                        .font(.system(size: 30, weight: .heavy, design: .default))
                    
                    
                VStack {
                        Text(film.director)
                                .font(.system(size: 10, weight: .regular, design: .default))
                        }
                    }
                    
                }
                
                Text(film.description)
                    .font(.subheadline)
            }
            
            
        }
        
    }

#Preview {
    filmDetailView(film: Film(image:"filme1", title: "Tudo em Todo o Lugar ao Mesmo Tempo", director: "Daniel Kwan, Daniel Scheinert", description: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado", foto: "filme1capa"))
}
