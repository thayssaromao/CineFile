//
//  CardDetailView.swift
//  Aula4
//
//  Created by Afonso Rekbaim on 21/05/25.
//

import SwiftUI

struct filmDetailView: View {
    
    @State var isLiked = false
    @State var isViewed = false
    
    let film: Film
    
    var body: some View {
        NavigationStack{
            
            VStack{
                    
                    Image(film.foto)
                        .resizable()
                        .frame(width: 450, height: 450)
                        .overlay(
                            LinearGradient(
                                gradient: Gradient(stops: [
                                    .init(color: .blue.opacity(0.1), location: 0.5),
                                    .init(color: .white.opacity(1.0), location: 1.0)
                                ]),
                                startPoint: .top,
                                endPoint: .bottom
                                
                            ))
                    
                        .cornerRadius(25)
                    
                    
                    HStack (alignment: .bottom){
                        
            
                        
                        Image(film.image)
                            .cornerRadius(15)
                            .scaleEffect(0.5)
                            .padding(.top, 200)
                        
                        VStack(alignment: .leading) {
                            Text(film.title)
                                .font(.title3)
                                .bold()
                            Text(film.director)
                                .foregroundStyle(.secondary)
                            
                            Rectangle()
                                .foregroundColor(.pink)
                                .frame(width: 50, height: 30)
                                .cornerRadius(15)
                                .overlay(
                                    Button(action: {
                                        isLiked.toggle()
                                    }) {
                                        Image(systemName: isLiked ? "heart.fill" : "heart")
                                            .foregroundStyle(.white)
                                    }
                                )
                        }
                        Spacer()
                        
                    }
                
                    Text(film.description)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 30)
                        .cornerRadius(15)
                        .overlay(
                            Button(action: {
                                isViewed.toggle()
                            }) {
                                Image(systemName: isViewed ? "eye" : "eye.fill")
                                    .foregroundStyle(.white) }
                        )
                            }
            
        }
                            
                        }
                }
                
        


#Preview {
    filmDetailView(film: Film(image:"filme1", title: "Tudo em Todo o Lugar ao Mesmo Tempo", director: "Daniel Kwan, Daniel Scheinert", description: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado", foto: "filme1capa"))
}
