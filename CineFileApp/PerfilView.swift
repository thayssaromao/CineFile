//
//  PerfilView.swift
//  CineFileApp
//
//  Created by Thayssa Romão on 30/05/25.
//

import SwiftUI

struct PerfilView: View {
    
    let film = DataModel()
    
    var body: some View {
        
        VStack(spacing: 1){
            
            ZStack{
                
                Image("grade")
                    .resizable()
                    .ignoresSafeArea()
                    
                VStack{
                    
                    ZStack {
                        
                        Image("tiraPerfil")
                           Circle()
                               .stroke(Color(red: 29/255, green: 241/255, blue: 145/255), lineWidth: 6)
                               .frame(width: 140, height: 140)

                           Image("perfil")
                               .resizable()
                               .scaledToFill()
                               .frame(width: 135, height: 135)
                               .clipShape(Circle())
                       }
            
                    VStack(alignment: .center){
                        
                        Text("RATATA")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                        
                        Text("Adoro um filme bom!")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundStyle(.white)
                    }.padding(.bottom, 20)
                    

                    VStack(alignment: .leading){
                        
                       
                        HStack{
                            Text("Top Filés")
                                .padding(.horizontal,17)
                                .padding(.vertical, 5)
                                .font(.subheadline)
                                .background(Color(red: 29/255, green: 241/255, blue: 145/255))
                                .cornerRadius(14)
                            Spacer()
                                .padding(20)
                        }
                        
                        ScrollView(.horizontal){
                            
                            HStack(spacing:12){
                                
                                ForEach(film.filmList){film in
                                    Image(film.image)
                                        .resizable()
                                        .frame(width: 90, height: 140)
                                        .cornerRadius(9)
                                }
                            }.padding(.bottom,25)
                            
                        }
                        HStack{
                            Text("Assistidos")
                                .padding(.horizontal,17)
                                .foregroundStyle(Color.white)
                                .padding(.vertical, 5)
                                .font(.subheadline)
                                .background(Color(red: 255/255, green: 92/255, blue: 146/255))
                                .cornerRadius(14)
                            Spacer()
                                .padding(20)
                        }
                        
                        
                        ScrollView(.horizontal){
                            HStack(spacing:12){
                                
                                ForEach(film.filmList.shuffled()) { film in

                                    Image(film.image)
                                        .resizable()
                                        .frame(width: 90, height: 140)
                                        .cornerRadius(9)
                                    
                                }
                            }
                        }
                        
                        
                    }.padding(.horizontal, 20)
                    
                    Spacer()
                        
                }
                
                }         .navigationBarBackButtonHidden(true)

                        
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.0, green: 15/255, blue: 58/255))
    }
    
}



#Preview {
    PerfilView()
}
