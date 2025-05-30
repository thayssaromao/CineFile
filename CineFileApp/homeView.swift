//
//  homeView.swift
//  CineFileApp
//
//  Created by Ana Luisa Luy on 29/05/25.
//

import SwiftUI

struct homeView: View {
    
    @State private var isLiked = false
    
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
                        Image("filme1")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme2")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme3")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme4")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme5")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme6")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme7")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
                        Image("filme8")
                            .resizable()
                            .frame(width: 120, height: 180)
                            .cornerRadius(15)
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
