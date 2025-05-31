//
//  TabView.swift
//  CineFileApp
//
//  Created by Thayssa Romão on 31/05/25.
//


import SwiftUI

struct tabView: View {
    
    var body: some View {
        // TODO: Implementar TabView aqui!
                
        TabView {
            
            Tab("Home", systemImage: "house.fill") {
                homeView()
            }
            
            Tab("Filmes", systemImage: "play.square.stack") {
//                filmDetailView()
            }
            
            
            Tab("Perfil", systemImage: "person") {
                PerfilView()
            }
            
            }
        }
    
}

#Preview {
    tabView()
}

//import SwiftUI
//
//struct tabView: View {
//    @State private var selectedTab: Tab = .home
//
//    enum Tab {
//        case home, create, profile
//    }
//
//    var body: some View {
//        ZStack {
//            // Conteúdo baseado na aba selecionada
//            switch selectedTab {
//            case .home:
//                homeView()
//            case .create:
//                Text("Criar Conteúdo")
//            case .profile:
//                PerfilView()
//            }
//
//            VStack {
//                Spacer()
//
//                HStack {
//                    // Tab HOME
//                    TabBarButton(icon: "house.fill", isSelected: selectedTab == .home) {
//                        selectedTab = .home
//                    }
//
//                    Spacer()
//
//                    // Tab PROFILE
//                    TabBarButton(icon: "person", isSelected: selectedTab == .profile) {
//                        selectedTab = .profile
//                    }
//                }
//                .padding(.horizontal, 50)
//                .padding(.vertical, 20)
//                .background(
//                    Color.white
//                        .clipShape(Capsule())
//                        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
//                )
//                .frame(height: 80)
//                .padding(.horizontal)
//                .overlay(
//                    // Botão central flutuante
//                    Button(action: {
//                        selectedTab = .create
//                    }) {
//                        Image(systemName: "plus.circle.fill")
//                            .resizable()
//                            .frame(width: 64, height: 64)
//                            .foregroundColor(Color(red: 29/255, green: 241/255, blue: 145/255))
//                            .background(Color.white)
//                            .clipShape(Circle())
//                            .shadow(radius: 4)
//                    }
//                    .offset(y: -32)
//                )
//            }
//        }
//        .edgesIgnoringSafeArea(.bottom)
//    }
//}
//
//struct TabBarButton: View {
//    let icon: String
//    let isSelected: Bool
//    let action: () -> Void
//
//    var body: some View {
//        Button(action: action) {
//            Image(systemName: icon)
//                .font(.system(size: 24))
//                .foregroundColor(isSelected ? Color(red: 29/255, green: 241/255, blue: 145/255) : .gray)
//        }
//    }
//}
//
//#Preview {
//    tabView()
//}
