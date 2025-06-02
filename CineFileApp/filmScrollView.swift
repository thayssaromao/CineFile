import SwiftUI

struct filmScrollView: View {
    let dataModel = DataModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment:.center, spacing: 50) {
                ForEach(dataModel.filmList) { film in
                    FilmCardView(film: film)
    
                }
                
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(20)
            .shadow(color: .blue.opacity(0.1), radius: 6, x: 0, y: 4)
            
        }
    }
    
}

#Preview {
    NavigationStack {
        filmScrollView()
    }
}
