

import SwiftUI

struct MapView: View {
    var body: some View {
        VStack {
            MapMapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            VStack {
                ZStack() {
                    Image("banner_detailBloco")
                        .offset(y: -30)
                        .padding(.bottom, -30)
                    
                    VStack (alignment: .leading) {
                        VStack {
                            Text("Eu Acho É Pouco!")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding(.bottom, 5)
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("250 m")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 2)
                            Text("Atualizado há 5 min")
                                .font(.subheadline)
                                .fontWeight(.light)
                        }
                    }
                    
                    
                }

                    
                
            CircleImage()
                .frame(width: 200, height: 10, alignment: .bottom)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            }
            

                Divider()
                
                Text("Horários:")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.bottom)
                    .padding(.top)
                Text("Sábado (9h) - Alto da Sé\n" + "Terça (15h) - Alto da Sé\n")
                    
            .padding()
            
            Spacer()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
