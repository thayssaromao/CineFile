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
        NavigationStack {
            VStack(alignment: .center, spacing: 20) {
                
                    ZStack(alignment: .bottomLeading) {
                        Image(film.foto)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 300)
                            .clipped()
                            .ignoresSafeArea()
                        
                        LinearGradient(
                            gradient: Gradient(stops: [
                                .init(color: .clear, location: 0.0),
                                .init(color: .white, location: 1.0)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .frame(height: 150)
                    }

                    HStack(alignment: .top, spacing: 20) {
                        Image(film.image)
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text(film.title)
                                .font(.title3)
                                .bold()
                            
                            Text(film.director)
                                .foregroundStyle(.secondary)
                            
                            Button(action: {
                                isLiked.toggle()
                            }) {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                                    .foregroundStyle(.white)
                                    .padding()
                                    .background(Color.pink)
                                    .clipShape(Circle())
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)

                VStack(alignment:.center, spacing: 50) {
                        Text(film.description)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal)
                            .padding(.vertical)
                        
                        Button(action: {
                            isViewed.toggle()
                        }) {
                            Image(systemName: isViewed ? "eye" : "eye.fill")
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.blue)
                                .clipShape(Circle())
                        }
                    }

                Spacer(minLength: 40)
                }
            .padding(.horizontal, 20)
            .ignoresSafeArea()
            

            }
        }
    }



#Preview {
    filmDetailView(film: Film(image:"filme1", title: "Tudo em Todo o Lugar ao Mesmo Tempo", director: "Daniel Kwan, Daniel Scheinert", description: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado", foto: "filme1capa"))
}
