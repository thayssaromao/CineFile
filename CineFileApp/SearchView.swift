//
//  SearchView.swift
//  CineFileApp
//
//  Created by Thayssa Romão on 02/06/25.
//

import SwiftUI

struct SearchView: View {
    
    
    @State var isClicked = true
    @State private var isOverlayPresented = false
    @State private var selectedFilm: Film? = nil
    
    let dataModel = DataModel()
    
    var body: some View {
        
        ZStack{
            Image("gradeSearch")
                .resizable()
            
            Rectangle()
                .frame(width: 500, height: 460)
                .foregroundStyle(Color(red: 0.0, green: 15/255, blue: 58/255))
                .offset(x:10, y: 229)
            
            ZStack {
                Rectangle()
                    .frame(width: 350, height: 690)
                    .foregroundStyle(Color.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.8), radius: 6, x: 0, y: 4)

                HStack(spacing: 10) {
                    // HStack da lupa + botão de filtro
                    HStack(spacing: 12) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 10)
                        .background(Color(red: 235/255, green: 235/255, blue: 235/255))
                        .cornerRadius(12)
                        .frame(width: 240) // Ajuste conforme necessário para caber dentro da largura do Rectangle
                    }
                    Button(action: {
                        isOverlayPresented.toggle()
                    }) {
                        HStack(alignment: .center){
                            Image(systemName: "slider.vertical.3")
                                .foregroundStyle(Color.black)
                            
                        }.padding(.horizontal,20)
                            .padding(.vertical, 10)
                            .background(Color(red: 29/255, green: 241/255, blue: 145/255))
                            .cornerRadius(12)
                    }
                    
                }
                .offset(x:0, y: -300)
                
                ScrollView(.vertical){
                    
                    
                    
                    VStack(alignment:.leading, spacing:9) {
                        
                        Text("Filmes em Alta no CineFilé")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.vertical, 25)
                        
                        ForEach(dataModel.filmList) { film in
                            
                            HStack(spacing:12){
                                Image(film.foto)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height:80)
                                    .cornerRadius(3)
                                
                                Text(film.title)
                                    .font(.caption)
                                    .bold()
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(Color.green)
                                    .padding(25)
                            }
                            
                            
                        }
                        
                    }.padding(.leading, 20)
                    
                    
                    
                }.frame(width: 350, height: 585)
                    .padding(.top, 100)
                
                
            }
            if isOverlayPresented {
                
                OverlayContentView(isPresented: $isOverlayPresented)
                
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Faz o overlay preencher a tela
                    .background(Color.black.opacity(0.01))
                                    
            }
            
        }.ignoresSafeArea()
        
    }}
    
#Preview {
    SearchView()
}
