---
# 🎬 CineFilé App: Um Estudo de Caso de Navegação e Interação ✨

## Introdução

O CineFilé é um app que oferece navegação rápida entre diferentes áreas, permitindo ao usuário alternar entre seções principais com facilidade para a melhor lista de filmes curada pela mentoria da Apple Developer Acaddemy.

---

## Desafios e Soluções

### 1. **Navegação Intuitiva**

**Proporcionar uma transição suave entre as seções principais.

**Solução:**
* **Navegação por Abas Personalizada (`TabView` com `ZStack`):** Em vez de uma `TabBar` padrão, foi desenvolvida uma barra de abas customizada na parte inferior da tela, utilizando uma `ZStack` para empilhar o conteúdo das abas e a barra de navegação. Isso permitiu total controle sobre o design e a experiência de transição entre as seções "Home", "Filmes" e "Perfil".

### 2. **Gestão e Exibição de Filmes**

**Desafio:** Apresentar uma lista extensa de filmes de forma organizada, permitir a busca eficiente e facilitar a interação com cada item.

**Solução:**
* **`FilmCardView` Compacto e Interativo:** Cada filme é exibido em um `FilmCardView` individual. O design foi otimizado para ser um "retângulo menor" e responsivo, garantindo que as informações essenciais (capa, título, diretor, descrição) sejam visíveis sem sobrecarregar a interface.
    * **Quebra de Linha Automática:** Títulos longos são automaticamente ajustados para múltiplas linhas utilizando `.lineLimit(nil)` e `.fixedSize(horizontal: false, vertical: true)`, mantendo a legibilidade e o layout.
    * **Controles de Interação:** Botões dedicados com ícones (`eye` para "Assistido" e `heart` para "Favorito") permitem ao usuário marcar filmes com um toque. A cor de fundo dos botões muda dinamicamente para indicar o estado (`.gray` para não marcado, cores vibrantes para marcado).
* **Busca Avançada (Overlay Fixo):**
    * **Botão de Busca:** Um botão com o ícone "slider.vertical.3" na tela de "Filmes" aciona um **overlay fixo** para "Busca Avançada".
    * **Implementação do Overlay:** Utilizou-se um `@State` na `SearchView` (`isOverlayPresented`) e uma estrutura `if isOverlayPresented { OverlayContentView(...) }` dentro de um `ZStack` principal. Isso garante que o overlay apareça de forma estática e controlada.
    * **Fechamento do Overlay:** Para um controle robusto, a `OverlayContentView` recebe um `@Binding` (`isPresented`) da `SearchView`, permitindo que o próprio overlay altere a variável de estado pai para se fechar, tanto ao clicar no botão "Fechar Overlay" quanto ao tocar na área escurecida do fundo do overlay.
    * **Menus Suspensos (`Menu`):** Dentro da "Busca Avançada", os campos "Gênero" e "Categoria" foram transformados em **menus suspensos nativos** (`Menu`), oferecendo listas de opções selecionáveis e melhorando a usabilidade em formulários.

### 3. **Perfil do Usuário**

**Desafio:** Oferecer uma seção para o usuário acessar suas informações, mesmo com um foco inicial em funcionalidade simulada.

**Solução:**
* **Tela de Perfil:** Uma seção dedicada de "Perfil" permite que o usuário visualize suas informações de cadastro (simuladas). Isso estabelece a base para futuras expansões com funcionalidades de autenticação e personalização de dados reais.

---

## Conclusão

O desenvolvimento do CineFilé demonstra a aplicação de princípios de design centrado no usuário e técnicas de SwiftUI para criar uma experiência de aplicativo responsiva e agradável. As escolhas de implementação, como a navegação personalizada, os cards de filme interativos e o overlay de busca fixa, refletem um esforço para otimizar a usabilidade e a estética. O projeto é um exemplo prático de como a combinação de componentes visuais e lógicas de estado pode resultar em uma interface de usuário eficiente e intuitiva.
