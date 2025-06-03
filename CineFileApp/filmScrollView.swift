import SwiftUI

struct filmScrollView: View {
    let dataModel = DataModel()
    
    var body: some View {
        ZStack{
            Image("grade")
                .resizable()
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(alignment:.center, spacing: 50) {
                    ForEach(dataModel.filmList) { film in
                        FilmCardView(film: film)
        
                    }
                    
                    
                }
                .navigationBarBackButtonHidden(true)
                .padding(16)
                .cornerRadius(20)
                .shadow(color: .blue.opacity(0.1), radius: 6, x: 0, y: 4)
                
            }
        }.background(Color(red: 0.0, green: 15/255, blue: 58/255))
    }
    
}

#Preview {
    NavigationStack {
        filmScrollView()
    }
}
