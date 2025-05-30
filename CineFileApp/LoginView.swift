//
//  LoginView.swift
//  CineFileApp
//
//  Created by Thayssa Romão on 29/05/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var isPresentingSignInView = false
    var body: some View {
        
        
        VStack(alignment: .center){
            
            Spacer()
            
            Image("fileLogo")
                .scaleEffect(isPresentingSignInView ? 0.7 : 1.0)
                .offset(y: isPresentingSignInView ? -300 : 0)
            
            Spacer()
            
        }
       .onTapGesture { // Detecta qualquer toque na VStack
           withAnimation {
               
               isPresentingSignInView.toggle()
           }
            
            
            
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.0, green: 15/255, blue: 58/255))
        
        
            .sheet(isPresented: $isPresentingSignInView) {
                SignInModal()
                    .presentationDetents([
                        .height(550)
                    ])
            }.presentationCornerRadius(nil)
        
        
    }
}

#Preview {
    LoginView()
}
