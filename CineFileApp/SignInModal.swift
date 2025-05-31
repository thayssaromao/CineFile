
////
////  SignInModal.swift
////  CineFileApp
////
////  Created by Thayssa Romão on 29/05/25.
////

import SwiftUI

struct SignInModal: View {
    
    @Binding var isLoggedIn: Bool
    
    @Environment(\.dismiss) var dismiss
    
    @State var email = ""
    @State var password = ""
    @State var emailIsShowing: Bool = false
   
    
    var body: some View {
        
     
            
            VStack{
                
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(60)
                    .foregroundStyle(Color(red: 0.0, green: 15/255, blue: 58/255))
                
                
                VStack(spacing: 30){
                    
                    ZStack(alignment: .trailing){
                        VStack(alignment: .leading){
                            
                            Text("E-mail: ")
                            TextField("E-mail", text: $email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                )
                            
                        }
                        Image(systemName: emailIsShowing ? "eye.slash" : "eye")
                            .padding(.top,27 )
                            .padding(.horizontal,20 )
                        
                            .foregroundColor(.gray)
                            .onTapGesture {
                                emailIsShowing.toggle()
                            }
                    }
                    
                    ZStack(alignment: .trailing){
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Senha: ")
                                Spacer()
                                Text("Recuperar Senha")
                                    .foregroundStyle(Color.blue)
                            }
                            SecureField("Senha", text: $password)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                )
                            
                            
                        }
                        
                        Image(systemName: emailIsShowing ? "eye.slash" : "eye")
                            .padding(.top,27 )
                            .padding(.horizontal,20 )
                        
                            .foregroundColor(.gray)
                            .onTapGesture {
                                emailIsShowing.toggle()
                            }
                    }
                    
                    
                    Button("Fazer Login") {
                       
                        isLoggedIn = true
                        dismiss()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(red: 29/255, green: 241/255, blue: 145/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    
                    Button("Criar uma Conta") {
                        // Aqui você implementaria a lógica de cadastro
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(red: 0, green: 15/255, blue: 58/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                Spacer()
            
            }
            .padding()
            .background(Color(red: 243/255, green: 243/255, blue: 244/255))
            .background(.clear)
        
        
        
    }
}
