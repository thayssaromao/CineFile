import SwiftUI

struct LoginView: View {
    @State private var isPresentingSignInView = false

    var body: some View {
        VStack(alignment: .center) {
            Spacer()

            Image("fileLogo")
                .scaleEffect(isPresentingSignInView ? 0.7 : 1.0)
                .offset(y: isPresentingSignInView ? -300 : 0)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.0, green: 15/255, blue: 58/255))
        .onTapGesture {
            withAnimation {
                isPresentingSignInView.toggle()
            }
        }
        .sheet(isPresented: $isPresentingSignInView) {
            ZStack {
                // Força o fundo da sheet a ser transparente
                BackgroundClearView()

                // Conteúdo real do modal
                SignInModal()
                    .presentationDetents([.height(550)])
                    .clipShape(
                        .rect(
                            topLeadingRadius: 145,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 0
                        )
                    )
            }
            .ignoresSafeArea()
            .presentationCornerRadius(nil)
        }
    }
}

#Preview {
    LoginView()
}
