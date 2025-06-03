import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            homeView()
            .navigationBarBackButtonHidden(true)

        }
    }
}
    #Preview {
        ContentView()
    }

