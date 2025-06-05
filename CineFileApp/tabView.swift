
import SwiftUI

struct tabView: View {
    @State private var selectedTab: Tab = .home

    enum Tab {
        case home, search, film, profile
    }

    var body: some View {
        ZStack {
            // Conteúdo baseado na aba selecionada
            switch selectedTab {
            case .home:
                ContentView()
            case .search:
                SearchView()
                    .navigationBarBackButtonHidden(true)
            case .film:
                filmScrollView()
            case .profile:
                PerfilView()
            }

            VStack {
                Spacer() // Empurra a Tab Bar para a parte inferior

                HStack(spacing: 30) { // Aumentei um pouco o espaçamento para testes
                    TabBarButton(icon: "house.fill", isSelected: selectedTab == .home) {
                        selectedTab = .home
                    }

                    TabBarButton(icon: "magnifyingglass", isSelected: selectedTab == .search) {
                        selectedTab = .search
                    }
                    
                    TabBarButton(icon: "play.square.stack", isSelected: selectedTab == .film) {
                        selectedTab = .film
                    }

                    TabBarButton(icon: "person", isSelected: selectedTab == .profile) {
                        selectedTab = .profile
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10) // Padding interno para a altura da cápsula
                .background(
                    Color.white
                        .clipShape(Capsule())
                        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
                        .opacity(0.5) // Aumentei a opacidade para melhor visualização
                )
                .padding(.horizontal, 40) // Este padding horizontal define o "recuo" da borda da tela.
                                          // QUANTO MAIOR ESTE VALOR, MAIS ESTREITA E CENTRALIZADA FICARÁ A CÁPSULA.
                .frame(maxWidth: .infinity, alignment: .center) // Garante que a Tab Bar fique centralizada
                .padding(.top, 20)
                .padding(.bottom, 20) // Adiciona um padding na parte inferior para que não fique colada na borda
            }
        }
        .edgesIgnoringSafeArea(.bottom) // Continua ignorando a área segura inferior para a Tab Bar
    }
}

struct TabBarButton: View {
    let icon: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .font(.system(size: 25))
                .foregroundColor(isSelected ? Color(red: 29/255, green: 241/255, blue: 145/255) : .black)
        }
    }
}

#Preview {
    tabView()
}
