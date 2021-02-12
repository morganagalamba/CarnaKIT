//
//  PerfilView.swift
//  CarnaKit
//
//  Created by Morgana Beatriz on 09/02/21.
//

import SwiftUI

struct PerfilView: View {
    @State var pesquisa: String = ""
    let colors = Gradient(colors: [Color("yellowView"),Color("pinkView")] )
    @State private var selection = 0
    private let items: [String] = ["Favoritos","Todos"]
    var body: some View {
        
        ZStack{
            Rectangle()
                Color("pinkView")
                .ignoresSafeArea()
            
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Meus contatos")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Pesquisar",text: $pesquisa)
                }.modifier(custom2ViewModifier())
                .padding(.horizontal)
                Divider()
                Picker(selection: $selection, label: Text("")) {
                               ForEach(0..<items.count, id: \.self) { index in
                                   Text(self.items[index]).tag(index)
                               }
                           }.pickerStyle(SegmentedPickerStyle())
                        //Text("Value: \(selection)")
                            .padding()
                
            }.background(Color("pinkView"))
            
            
            if selection == 0 {
                ZStack(alignment: .topTrailing){
                    Image("confetes")
                    Image("confetes")
                        .offset(y: 400)
                    ScrollView{
                        VStack{
                            CardAmigos("Hélio Silva", "@LOdoGera","helio", true, "Ativo Agora")
                        }.frame(width: 400.0, height:170.0)
                        VStack{
                            CardAmigos("Mirella Almeida", "@MirellinhaHtinha","mirella", true, "Ativo há 3 minutos")
                        }.frame(width: 400.0, height:170.0)
                        VStack{
                            CardAmigos("Morgana Galamba", "@MorgsDoL","morgana", true, "Ativo há 5 minutos")
                        }.frame(width: 400.0, height:170.0)
                        VStack{
                            CardAmigos("Pedro", "@Spinololo","pedro", true, "Ativo há 3 horas")
                        }.frame(width: 400.0, height:170.0)
                    }
                }
                
            }
            else{
                ZStack(alignment: .topTrailing){
                    Image("confetes")
                    Image("confetes")
                        .offset(y: 400)
                    ScrollView{
                        VStack{
                            CardAmigos("Ana Clara", "@Claroquina","anaclara", false, "Ativo Agora")
                        }.frame(width: 400.0, height:170.0)
                        VStack{
                            CardAmigos("Erick Silva", "@SemNotion","erick", false, "Ativo há 3 minutos")
                        }.frame(width: 400.0, height:170.0)
                        VStack{
                            CardAmigos("Dudu Ramos ", "@Dudove","dudu", false, "Ativo há 5 minutos")
                        }.frame(width: 400.0, height:170.0)
                        VStack{
                            CardAmigos("Everlaynne Tarcila", "@Cherolaine","ever", false, "Ativo há 3 horas")
                        }.frame(width: 400.0, height:170.0)
                        
                    }
                }
               
            }
            
            
        }.background(RadialGradient(gradient: colors, center: .trailing, startRadius: 0, endRadius: 250))
        //.background(Color("pinkView"))
        
        }
    }
}
struct custom2ViewModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(SwiftUI.Color("rosaTab"))
            .cornerRadius(10)
            //.padding()
            .foregroundColor(.white)
            
    }
}
struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
