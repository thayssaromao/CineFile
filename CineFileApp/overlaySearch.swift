import SwiftUI

struct OverlayContentView: View {
    @Binding var isPresented: Bool // Mantemos o Binding para fechar o overlay principal
    
    @State private var selectedGenre: String = "Drama; Terror; Romance" // Estado para o gênero selecionado
    @State private var selectedCategory: String = "Animação" // Estado para a categoria selecionada
    
    // Lista de opções de gêneros
    let genres: [String] = ["Ação", "Aventura", "Comédia", "Drama", "Ficção Científica", "Romance", "Terror", "Suspense", "Documentário", "Fantasia"]
    
    // Lista de opções de categorias (se for diferente de gênero, ou pode ser a mesma lista)
    let categories: [String] = ["Animação", "Live-Action", "Curta-metragem"]

    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .ignoresSafeArea()
                .onTapGesture {
                    isPresented = false // Fecha o overlay ao tocar fora
                }

            VStack{
                Text("Busca Avançada")
                    .font(.title2)
                    .bold()
                    .padding(.vertical,30)

                // --- GÊNERO: Transformado em Menu Suspenso ---
                VStack(alignment:.leading){
                    Text("Gênero")
                    
                    Menu {
                        // Opções do menu para Gênero
                        ForEach(genres, id: \.self) { genre in
                            Button(action: {
                                selectedGenre = genre // Atualiza o gênero selecionado
                            }) {
                                Text(genre)
                            }
                        }
                    } label: {
                        // Aparência da caixa suspensa de Gênero
                        HStack {
                            Text(selectedGenre) // Exibe o gênero selecionado
                                .fontWeight(.thin)
                            Spacer()
                            Image(systemName: "chevron.down") .foregroundStyle(Color.green)
                        }
                        .padding(.horizontal, 20) // Ajuste o padding para o tamanho desejado
                        .padding(.vertical, 15) // Ajuste a altura da caixa
                        .frame(width: 250) // Defina uma largura fixa para a caixa
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                        .foregroundColor(.black) // Cor do texto e ícone
                    }
                }
                .padding(.bottom, 20)
                
                // --- CATEGORIA: Transformado em Menu Suspenso (repetindo o padrão) ---
                VStack(alignment:.leading){
                    Text("Categoria")
                    
                    Menu {
                        // Opções do menu para Categoria
                        ForEach(categories, id: \.self) { category in
                            Button(action: {
                                selectedCategory = category // Atualiza a categoria selecionada
                            }) {
                                Text(category)
                            }
                        }
                    } label: {
                        // Aparência da caixa suspensa de Categoria
                        HStack {
                            Text(selectedCategory) // Exibe a categoria selecionada
                                .fontWeight(.thin)
                            Spacer()
                            Image(systemName: "chevron.down") .foregroundStyle(Color.green)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 15)
                        .frame(width: 250) // Defina uma largura fixa para a caixa
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                        .foregroundColor(.black)
                    }
                }
                .padding(.bottom, 30)

                Button("Aplicar filtro") {
                    isPresented = false
                }
                .padding(.horizontal,50)
                .padding(.vertical,20)
                .background(Color(red: 29/255, green: 241/255, blue: 145/255))
                .foregroundColor(.black)
                .cornerRadius(10)
            }
            .frame(width: 350, height: 470)
            .background(Color.white)
            .cornerRadius(50)
            .shadow(radius: 10)
        }
    }
}

// Preview precisa do Binding agora
#Preview {
    OverlayContentView(isPresented: .constant(true))
}
