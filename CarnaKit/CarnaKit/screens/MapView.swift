

import SwiftUI

struct MapView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MapMapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            VStack {
                ZStack(alignment: .bottomLeading){
                    Image("banner_detailBloco")
                        .offset(y: -30)
                        .padding(.bottom, -30)
                    
                    VStack(alignment: .leading) {
                        VStack {
                            Text("Eu Acho É Pouco!")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom,2)
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("250 m")
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            Text("Atualizado há 5 min")
                                .font(.subheadline)
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding()
                    
                    
                }

                    
                
            CircleImage()
                .frame(width: 200, height: 10, alignment: .bottom)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            }
            
            VStack(alignment: .leading){
                Text("Sábado (13/02)")
                    .font(.title3)
                    .fontWeight(.bold)

                    HStack{
                        Text("8:00")
                            .font(.largeTitle)
                            .fontWeight(.black)
                        Divider()
                        Text("Rua de São Bento, 358")
                            .font(.headline)
                            .fontWeight(.semibold)

                    }

                .frame(height:60)
                
            }    .padding(.top, 10)
            .padding(.leading, 10)
            
            VStack(alignment: .leading){
                Text("Sábado (13/02)")
                    .font(.title3)
                    .fontWeight(.bold)

                    HStack{
                        Text("8:00")
                            .font(.largeTitle)
                            .fontWeight(.black)
                        Divider()
                        Text("Rua de São Bento, 358")
                            .font(.headline)
                            .fontWeight(.semibold)

                    }

                .frame(height:60)
                
            }    .padding(.top, 10)
            .padding(.leading, 10)
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
            }


        

            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
