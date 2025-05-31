import SwiftUI

struct LoginView: View {
    @State private var isPresentingSignInView = false
    @State private var isLoggedIn = false

    var body: some View {
        NavigationStack {
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
            // ✅ Chama o modal de login
            .sheet(isPresented: $isPresentingSignInView) {
                ZStack {
                    BackgroundClearView()

                    // ✅ Passa binding de isLoggedIn
                    SignInModal(isLoggedIn: $isLoggedIn)
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


            .navigationDestination(isPresented: $isLoggedIn) {
                tabView()
            }
        }
    }
}

#Preview {
    LoginView()
}
