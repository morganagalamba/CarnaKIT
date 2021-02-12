

import SwiftUI

struct CardAmigos: View {
    private let blocoName: String
    private let description: String
    private let blocoPhoto: String
    @State private var see: Bool = true
    private let status: String
    
    
    init(_ blocoName: String, _ description: String, _ blocoPhoto: String, _ see: Bool, _ status: String){
        self.blocoName = blocoName
        self.description = description
        self.blocoPhoto = blocoPhoto
        self.status = status
        self.see = see
        
    }
    var body: some View {
        
        
        ZStack(alignment:.leading){
            
            VStack{
                ZStack{
                    Rectangle()
                        .cornerRadius(20)
                        .shadow(radius: 5)
                    Color.white
                        .cornerRadius(20)
                    VStack(alignment: .leading){
                        HStack{
                            Toggle(isOn: $see){
                                Text("\(blocoName)")
                                    .font(.title2)
                                    .bold()
                            }
                        }
                        
                        Text("\(description)")
                            .font(.subheadline)
                        
                        Text("\(status)")
                            .font(.subheadline)
                            .padding(.vertical,2)
                    }.padding(.leading, 100)
                    .padding()
                    
                }
            }.padding(.leading,40)
            .frame(width: 380.0, height: 100)
            
            
            Image("\(blocoPhoto)")
                .resizable()
                .frame(width: 140/*@END_MENU_TOKEN@*/, height: 140, alignment: /*@START_MENU_TOKEN@*/.center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
            
            
            
        }
        
        
        
    }
    
}

struct CardAmigos_Previews: PreviewProvider {
    static var previews: some View {
        CardAmigos("Hélio Silva", "@LOdoGera","EuAchoEPouco", true, "Ativo Agora")
    }
}
