//
//  homeView.swift
//  CineFileApp
//
//  Created by Ana Luisa Luy on 29/05/25.
//

import SwiftUI

struct homeView: View {
    
    @State var isLiked: Bool = false
    @State var isViewed: Bool = false
    
    let dataModel = DataModel()
    
    var body: some View {
        VStack (alignment: .center){
            ZStack (alignment: .top) {
                
                Image("logo cine horizontal")
                
                Image("tiras")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 60)
                
            }
            Text("Top filés")
                .font(.title)
                .bold()
            
            Divider()
                .frame(width: 200, height: 1)
                .background(Color.gray)
                .padding(.bottom, 20)
            
            
            
            ZStack(alignment: .top){
                
                Image("capamonica")
                    .scaleEffect(0.6)
                    .frame(width: 360, height: 200)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(stops: [
                                .init(color: .blue.opacity(0.1), location: 0.5),
                                .init(color: .black.opacity(0.8), location: 1.0)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                            
                        ).blendMode(.multiply))
                    .cornerRadius(25)
                
                Rectangle() // rosa
                    .foregroundColor(.pink)
                    .frame(width: 50, height: 30)
                    .cornerRadius(15)
                    .position(x:340,y:170)
                    .overlay(
                        Button(action: {
                            isLiked.toggle()
                        }) {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .foregroundStyle(.white)
                                .position(x: 340, y: 170)
                        }
                    )
                Rectangle()//verde
                    .frame(width: 110, height: 30)
                    .cornerRadius(15)
                    .position(x:80, y:1)
                    .foregroundStyle(.green)
                
                Text("Só os files")
                    .position(x:80, y:1)
                    .foregroundStyle(.black)
                    .bold()
                
            }
            
            Text("Popular entre os academers")
                .font(.title)
                .bold()
            
            Divider()
                .frame(height: 1)
                .background(Color.gray)
                .padding(.bottom, 10)
                .padding(.bottom, 15)
            
                ScrollView(.horizontal) {
                    HStack(alignment: .center){
                        ForEach(dataModel.filmList){ film in
                            //navigation link é o botao que navega
                            NavigationLink {
                                //parte de cima é a view de destino // a outra também tem que ter navigationbar
                                filmDetailView(film: film)
                            } label: {
                                //aqui em baixo é como a navigation link é
                                filmCapaView(film: film)
                            }
                        }
                    }
                    .padding(.horizontal, 15)
                    Spacer()
                }
                Spacer()
            
        }
        Spacer()
        }
    
    }

#Preview {
    homeView()
}
