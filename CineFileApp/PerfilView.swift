//
//  PerfilView.swift
//  CineFileApp
//
//  Created by Thayssa Romão on 30/05/25.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                
                Image("grade")
                    .resizable()
                    .ignoresSafeArea()
                    
                Image("tiraPerfil")
                        
                        
                ZStack {
                       Circle()
                           .stroke(Color(red: 29/255, green: 241/255, blue: 145/255), lineWidth: 8)
                           .frame(width: 150, height: 150)

                       Image("perfil")
                           .resizable()
                           .scaledToFill()
                           .frame(width: 143, height: 143)
                           .clipShape(Circle())
                   }
        
                VStack(alignment: .center, spacing: 15){
                    
                    Text("RATATA")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    Text("Adoro um filme bom!")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                }.padding(.top, 260)
                
                VStack{
                    
                    HStack{
                        
                    }
                }
            }
            
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.0, green: 15/255, blue: 58/255))
    }
    
}



#Preview {
    PerfilView()
}
