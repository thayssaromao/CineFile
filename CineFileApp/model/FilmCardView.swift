import SwiftUI
//teste
struct FilmCardView: View {
    let film: Film
    @State private var isLiked = false
    @State private var isViewed = false
    
    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 15) {
                
                ZStack{
                    Image(film.foto)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                    
                    LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: .clear, location: 0.0),
                            .init(color: .white, location: 1.0)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    ).ignoresSafeArea()
                    
                    
                    
                    VStack{
                        
                        HStack{
                            
                            Image(film.image)
                                .resizable()
                                .frame(width: 120, height: 180)
                                .cornerRadius(15)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(film.title)
                                    .font(.title3)
                                    .bold()
                                    .fixedSize(horizontal: false, vertical: true)
                                
                                Text(film.director)
                                    .foregroundStyle(.secondary)
                                
                                
                            }.padding(20)
                            
                            
                            
                            
                        }.padding(.horizontal, 20)
                        
                        
                    }
                    .offset(x:0, y: 75)
                    
                }.padding(.bottom, 30)
                
                Spacer()
                HStack(spacing:20){
                    
                    
                    Button(action: {
                        isViewed.toggle()
                    }) {
                        
                        HStack(spacing:10){
                            
                            Image(systemName: isViewed ? "eye" : "eye.slash.fill")
                            Text("Assistido")
                            
                            
                        }  .padding(.horizontal,30)
                            .padding(.vertical, 10)
                            .foregroundStyle(.white)
                            .background((isViewed ? .blue:.gray))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        isLiked.toggle()
                    }) {
                        
                        
                        HStack(spacing:10){
                            
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                            Text("Favorito")
                            
                            
                        }.padding(.horizontal,30)
                            .padding(.vertical, 10)
                            .foregroundStyle(.white)
                            .background(isLiked ?Color(red: 255, green: 105/255, blue: 180/255): .gray )
                            .cornerRadius(10)
                    }
                    
                    
                }
                Spacer()
                
                VStack(alignment:.center){
                    Text(film.description)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                    
                    
                }.padding(.vertical,20)
                
                
                Image(systemName: "chevron.down")
                    .font(.title)
                    .padding(.vertical,20)
            }
            .background(Color.white)
            
            
        }
        .scaledToFit()
        .cornerRadius(20)
        .padding(.vertical,10)
    }
}
#Preview {
    FilmCardView(film: Film(image:"filme1", title: "Tudo em Todo o Lugar ao Mesmo Tempo", director: "Daniel Kwan, Daniel Scheinert", description: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado", foto: "filme1capa"))
}
